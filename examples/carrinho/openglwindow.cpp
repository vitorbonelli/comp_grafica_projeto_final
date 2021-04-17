#include "openglwindow.hpp"

#include <imgui.h>

#include "abcg.hpp"

void OpenGLWindow::handleEvent(SDL_Event &event) {
  // Keyboard events
  if (event.type == SDL_KEYDOWN) {
    if (event.key.keysym.sym == SDLK_SPACE)
      m_gameData.m_input.set(static_cast<size_t>(Input::Fire));
    if (event.key.keysym.sym == SDLK_UP || event.key.keysym.sym == SDLK_w)
      m_gameData.m_input.set(static_cast<size_t>(Input::Up));
    if (event.key.keysym.sym == SDLK_DOWN || event.key.keysym.sym == SDLK_s)
      m_gameData.m_input.set(static_cast<size_t>(Input::Down));
    if (event.key.keysym.sym == SDLK_LEFT || event.key.keysym.sym == SDLK_a)
      m_gameData.m_input.set(static_cast<size_t>(Input::Left));
    if (event.key.keysym.sym == SDLK_RIGHT || event.key.keysym.sym == SDLK_d)
      m_gameData.m_input.set(static_cast<size_t>(Input::Right));
  }
  if (event.type == SDL_KEYUP) {
    if (event.key.keysym.sym == SDLK_SPACE)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Fire));
    if (event.key.keysym.sym == SDLK_UP || event.key.keysym.sym == SDLK_w)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Up));
    if (event.key.keysym.sym == SDLK_DOWN || event.key.keysym.sym == SDLK_s)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Down));
    if (event.key.keysym.sym == SDLK_LEFT || event.key.keysym.sym == SDLK_a)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Left));
    if (event.key.keysym.sym == SDLK_RIGHT || event.key.keysym.sym == SDLK_d)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Right));
  }

  // Mouse events
  if (event.type == SDL_MOUSEBUTTONDOWN) {
    if (event.button.button == SDL_BUTTON_LEFT)
      m_gameData.m_input.set(static_cast<size_t>(Input::Fire));
    if (event.button.button == SDL_BUTTON_RIGHT)
      m_gameData.m_input.set(static_cast<size_t>(Input::Up));
  }
  if (event.type == SDL_MOUSEBUTTONUP) {
    if (event.button.button == SDL_BUTTON_LEFT)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Fire));
    if (event.button.button == SDL_BUTTON_RIGHT)
      m_gameData.m_input.reset(static_cast<size_t>(Input::Up));
  }
  if (event.type == SDL_MOUSEMOTION) {
    glm::ivec2 mousePosition;
    SDL_GetMouseState(&mousePosition.x, &mousePosition.y);

    glm::vec2 direction{glm::vec2{mousePosition.x - m_viewportWidth / 2,
                                  mousePosition.y - m_viewportHeight / 2}};
    direction.y = -direction.y;
    m_carrinho.setRotation(std::atan2(direction.y, direction.x) - M_PI_2);
  }
}

void OpenGLWindow::initializeGL() {
  // Load a new font
  ImGuiIO &io{ImGui::GetIO()};
  auto filename{getAssetsPath() + "Inconsolata-Medium.ttf"};
  m_font = io.Fonts->AddFontFromFileTTF(filename.c_str(), 60.0f);
  if (m_font == nullptr) {
    throw abcg::Exception{abcg::Exception::Runtime("Cannot load font file")};
  }

  // Create program to render the stars
  // m_starsProgram = createProgramFromFile(getAssetsPath() + "stars.vert",
                                        //  getAssetsPath() + "stars.frag");
  // Create program to render the other objects
  m_objectsProgram = createProgramFromFile(getAssetsPath() + "objects.vert",
                                           getAssetsPath() + "objects.frag");

  glClearColor(0, 0, 0, 1);

#if !defined(__EMSCRIPTEN__)
  glEnable(GL_PROGRAM_POINT_SIZE);
#endif

  // Start pseudo-random number generator
  auto seed{std::chrono::steady_clock::now().time_since_epoch().count()};
  m_randomEngine.seed(seed);

  restart();
}

void OpenGLWindow::restart() {
  m_gameData.m_state = State::Playing;

  // m_starLayers.initializeGL(m_starsProgram, 25);
  m_carrinho.initializeGL(m_objectsProgram);
  m_cones.initializeGL(m_objectsProgram, 3);
  //m_bullets.initializeGL(m_objectsProgram);
}

void OpenGLWindow::update() {
  float deltaTime{static_cast<float>(getDeltaTime())};

  // Wait 5 seconds before restarting
  if (m_gameData.m_state != State::Playing &&
      m_restartWaitTimer.elapsed() > 5) {
    restart();
    return;
  }

  m_carrinho.update(m_gameData, deltaTime);
  //m_starLayers.update(m_carrinho, deltaTime);
  m_cones.update(m_carrinho, deltaTime);
  // m_bullets.update(m_carrinho, m_gameData, deltaTime);

  if (m_gameData.m_state == State::Playing) {
    checkCollisions();
    checkWinCondition();
  }
}

void OpenGLWindow::paintGL() {
  update();

  glClear(GL_COLOR_BUFFER_BIT);
  glViewport(0, 0, m_viewportWidth, m_viewportHeight);

  //m_starLayers.paintGL();
  m_cones.paintGL();
  // m_bullets.paintGL();
  m_carrinho.paintGL(m_gameData);
}

void OpenGLWindow::paintUI() {
  abcg::OpenGLWindow::paintUI();

  {
    auto size{ImVec2(300, 85)};
    auto position{ImVec2((m_viewportWidth - size.x) / 2.0f,
                         (m_viewportHeight - size.y) / 2.0f)};
    ImGui::SetNextWindowPos(position);
    ImGui::SetNextWindowSize(size);
    ImGuiWindowFlags flags{ImGuiWindowFlags_NoBackground |
                           ImGuiWindowFlags_NoTitleBar |
                           ImGuiWindowFlags_NoInputs};
    ImGui::Begin(" ", nullptr, flags);
    ImGui::PushFont(m_font);

    if (m_gameData.m_state == State::GameOver) {
      ImGui::Text("Game Over!");
    } else if (m_gameData.m_state == State::Win) {
      ImGui::Text("*You Win!*");
    }

    ImGui::PopFont();
    ImGui::End();
  }
}

void OpenGLWindow::resizeGL(int width, int height) {
  m_viewportWidth = width;
  m_viewportHeight = height;

  glClear(GL_COLOR_BUFFER_BIT);
}

void OpenGLWindow::terminateGL() {
  // glDeleteProgram(m_starsProgram);
  glDeleteProgram(m_objectsProgram);

  m_cones.terminateGL();
  // m_bullets.terminateGL();
  m_carrinho.terminateGL();
  //m_starLayers.terminateGL();
}

void OpenGLWindow::checkCollisions() {
  // Check collision between carrinho and cones
  for (auto &cone : m_cones.m_cones) {
    auto coneTranslation{cone.m_translation};
    auto distance{glm::distance(m_carrinho.m_translation, coneTranslation)};

    if (distance < m_carrinho.m_scale * 0.9f + cone.m_scale * 0.85f) {
      m_gameData.m_state = State::GameOver;
      m_restartWaitTimer.restart();
    }
  }
}

  // Check collision between bullets and cones
  // for (auto &bullet : m_bullets.m_bullets) {
  //   if (bullet.m_dead) continue;

  //   for (auto &cone : m_cones.m_cones) {
  //     for (auto i : {-2, 0, 2}) {
  //       for (auto j : {-2, 0, 2}) {
  //         auto coneTranslation{cone.m_translation + glm::vec2(i, j)};
  //         auto distance{
  //             glm::distance(bullet.m_translation, coneTranslation)};

  //         if (distance < m_bullets.m_scale + cone.m_scale * 0.85f) {
  //           cone.m_hit = true;
  //           bullet.m_dead = true;
  //         }
  //       }
  //     }
  //   }

    // Break cones marked as hit
    // for (auto &cone : m_cones.m_cones) {
    //   if (cone.m_hit && cone.m_scale > 0.10f) {
    //     std::uniform_real_distribution<float> m_randomDist{-1.0f, 1.0f};
    //     std::generate_n(std::back_inserter(m_cones.m_cones), 3, [&]() {
    //       glm::vec2 offset{m_randomDist(m_randomEngine),
    //                        m_randomDist(m_randomEngine)};
    //       return m_cones.createCone(
    //           cone.m_translation + offset * cone.m_scale * 0.5f,
    //           cone.m_scale * 0.5f);
    //     });
    //   }
    // }

//     m_cones.m_cones.remove_if(
//         [](const Cones::Cone &a) { return a.m_hit; });
//   }
// }

void OpenGLWindow::checkWinCondition() {
  if (m_cones.m_cones.empty()) {
    m_gameData.m_state = State::Win;
    m_restartWaitTimer.restart();
  }
}