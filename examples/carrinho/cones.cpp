#include "cones.hpp"

#include <cppitertools/itertools.hpp>
#include <glm/gtx/fast_trigonometry.hpp>

void Cones::initializeGL(GLuint program, int quantity) {
  terminateGL();

  // Start pseudo-random number generator
  auto seed{std::chrono::steady_clock::now().time_since_epoch().count()};
  m_randomEngine.seed(seed);

  m_program = program;
  m_colorLoc = glGetUniformLocation(m_program, "color");
  m_rotationLoc = glGetUniformLocation(m_program, "rotation");
  m_scaleLoc = glGetUniformLocation(m_program, "scale");
  m_translationLoc = glGetUniformLocation(m_program, "translation");

  // Create cones
  m_cones.clear();
  m_cones.resize(quantity);

  for (auto &cone : m_cones) {
    cone = createCone();

    // Make sure the cone won't collide with the carrinho
    do {
      cone.m_translation = {m_randomDist(m_randomEngine),
                                m_randomDist(m_randomEngine)};
    } while (glm::length(cone.m_translation) < 0.5f);
  }
}

void Cones::paintGL() {
  glUseProgram(m_program);

  for (auto &cone : m_cones) {
    glBindVertexArray(cone.m_vao);

    glUniform4fv(m_colorLoc, 1, &cone.m_color.r);
    glUniform1f(m_scaleLoc, cone.m_scale);
    glUniform1f(m_rotationLoc, cone.m_rotation);

    for (auto i : {-2, 0, 2}) {
      for (auto j : {-2, 0, 2}) {
        glUniform2f(m_translationLoc, cone.m_translation.x + j,
                    cone.m_translation.y + i);

        glDrawArrays(GL_TRIANGLE_FAN, 0, cone.m_polygonSides + 2);
      }
    }

    glBindVertexArray(0);
  }

  glUseProgram(0);
}

void Cones::terminateGL() {
  for (auto cone : m_cones) {
    glDeleteBuffers(1, &cone.m_vbo);
    glDeleteVertexArrays(1, &cone.m_vao);
  }
}

void Cones::update(const Carrinho &carrinho, float deltaTime) {
  for (auto &cone : m_cones) {
    cone.m_translation -= carrinho.m_velocity * deltaTime;
    cone.m_rotation = glm::wrapAngle(
        cone.m_rotation + cone.m_angularVelocity * deltaTime);
    cone.m_translation += cone.m_velocity * deltaTime;

    // Wrap-around
    if (cone.m_translation.x < -1.0f) cone.m_translation.x += 2.0f;
    if (cone.m_translation.x > +1.0f) cone.m_translation.x -= 2.0f;
    if (cone.m_translation.y < -1.0f) cone.m_translation.y += 2.0f;
    if (cone.m_translation.y > +1.0f) cone.m_translation.y -= 2.0f;
  }
}

Cones::Cone Cones::createCone(glm::vec2 translation,
                                              float scale) {
  Cone cone;

  auto &re{m_randomEngine};  // Shortcut

  // Randomly choose the number of sides
  std::uniform_int_distribution<int> randomSides(3, 3);
  cone.m_polygonSides = randomSides(re);

  // Choose a random color (actually, a grayscale)
  std::uniform_real_distribution<float> randomIntensity(0.5f, 0.6f);
  // cone.m_color = glm::vec4(1) * randomIntensity(re);
  cone.m_color = glm::vec4(180, 65, 0, 0);

  cone.m_color.a = 1.0f;
  cone.m_rotation = -0.5f;
  cone.m_scale = scale;
  cone.m_translation = translation;

  // Choose a random angular velocity
  cone.m_angularVelocity = 0.0f;

  // Choose a random direction
  // glm::vec2 direction{m_randomDist(re), m_randomDist(re)};
  glm::vec2 direction{m_randomDist(re), -1.0f};
  cone.m_velocity = glm::normalize(direction)/ 5.0f ; 

  // Create geometry
  std::vector<glm::vec2> positions(0);
  positions.emplace_back(0, 0);
  auto step{M_PI * 2 / cone.m_polygonSides};
  std::uniform_real_distribution<float> randomRadius(0.8f, 0.8f);
  
  
  for (auto angle : iter::range(0.0, M_PI * 2, step)) {
    auto radius{randomRadius(re)};
    positions.emplace_back(radius * std::cos(angle), radius * std::sin(angle));
  }
  positions.push_back(positions.at(1));

  // Generate VBO
  glGenBuffers(1, &cone.m_vbo);
  glBindBuffer(GL_ARRAY_BUFFER, cone.m_vbo);
  glBufferData(GL_ARRAY_BUFFER, positions.size() * sizeof(glm::vec2),
               positions.data(), GL_STATIC_DRAW);
  glBindBuffer(GL_ARRAY_BUFFER, 0);

  // Get location of attributes in the program
  GLint positionAttribute{glGetAttribLocation(m_program, "inPosition")};

  // Create VAO
  glGenVertexArrays(1, &cone.m_vao);

  // Bind vertex attributes to current VAO
  glBindVertexArray(cone.m_vao);

  glBindBuffer(GL_ARRAY_BUFFER, cone.m_vbo);
  glEnableVertexAttribArray(positionAttribute);
  glVertexAttribPointer(positionAttribute, 2, GL_FLOAT, GL_FALSE, 0, nullptr);
  glBindBuffer(GL_ARRAY_BUFFER, 0);

  // End of binding to current VAO
  glBindVertexArray(0);

  return cone;
}
