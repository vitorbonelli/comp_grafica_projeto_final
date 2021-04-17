# *Projeto Carrinho*
Este projeto trata-se de uma atividade da disciplina Computação Gráfica lecionada na UFABC.
Utilizamos como base o framework montado para esta disciplina, o ABCg. 
<br>(link: https://github.com/hbatagelo/abcg)

Nome e RA dos desenvolvedores:
			
	*Nome: Caio Augusto dos Santos Marques
	*RA: 11074813
	
	*Nome: Vitor Cesar Cota Bonelli
	*RA: 11009113

Principais detalhes sobre o projeto
			
	*Bibliotecas OpenGL & ABCg
	
	*Linguagem de programação: C++
  

Para executar o projeto localmente em sua maquina, é preciso seguir os seguintes procedimentos:
<br>(link: http://professor.ufabc.edu.br/~harlen.batagelo/cg/config.html)
```
# Se a sua maquina estiver configurada para a execução do projeto, no terminal digite:
$ cd /comp_grafica_projeto1
$ ./build/bin/carrinho/carrinho

```

# *Como Jogar*

1. Acesse https://vitorbonelli.github.io/comp_grafica_projeto1/carrinho/
2. Utilize as teclas direcionais do teclado (ou AWSD)
3. Faça o carrinho desviar dos cones.

# ✅Sobre o projeto

**O Projeto Carrinho**

Este projeto é representado por duas classes, a classe Carrinho e a classe Cone. Ao executar o programa o usuário pode manusear o carrinho, e caso ele fique muito proximo de um cone(semelhante a uma colisão) o projeto se reinicia. Esta aplicação, trata-se de uma adaptação do projeto Asteroids apresentado no curso, onde o usuario comanda uma nave que destroi pedregulhos.

<br>O carrinho foi montado a partir da união de dois triangulos, baseados nas seguintes coordenadas:
```
      glm::vec2{+00.0f, +10.0f}, glm::vec2{-10.0f, +20.0f},
      glm::vec2{+10.0f, +20.0f}, glm::vec2{+00.0f, +10.0f}, 

      glm::vec2{+00.0f, +15.0f}, glm::vec2{-10.0f, -05.0f}, 
      glm::vec2{+10.0f, -05.0f}, glm::vec2{+00.0f, +15.0f},
```
<br>As rodinhas frontais foram montadar como dois triangulos retângulos, baseados nas seguintes coordenadas:
```
      // glm::vec2{-07.0f, +17.5f}, glm::vec2{-07.0f, +12.5f},
      // glm::vec2{+00.0f, +17.5f}, glm::vec2{+00.0f, +15.0f},
      
      // glm::vec2{+07.0f, +17.5f}, glm::vec2{+07.0f, +12.5f},
      // glm::vec2{+00.0f, +17.5f}, glm::vec2{+00.0f, +15.0f},
```


### ✅Informações Adicionais

**O que é o SDL?**

O SDL (Simple DirectMedia Layer) é uma biblioteca de desenvolvimento que fornece acesso de baixo nível a hardware de áudio, teclado, mouse, joystick e gráfico via OpenGL e Direct3D.

**O que é o OpenGL?**

O OpenGL (Open Graphics Library) é uma API (Application Programming Interface) para a criação e desenvolvimento de aplicativos gráficos.

**O que é o ABCg?**

"ABCg permite a prototipagem rápida de aplicações gráficas interativas 3D em C++ capazes de rodar tanto no desktop quanto no navegador, sem alteração do código-fonte.
Internamente a ABCg utiliza a biblioteca SDL para gerenciar o acesso a dispositivos de entrada (mouse/teclado/gamepad) e saída (vídeo e áudio) de forma independente de plataforma, e a biblioteca GLEW para acesso às funções da API gráfica OpenGL. Além disso, a API do Emscripten é utilizada sempre que a aplicação é compilada para gerar binários WebAssembly. Desse modo, a ABCg é mais propriamente um framework do que uma biblioteca, pois assume o controle da aplicação. Por outro lado, a camada de abstração para essas APIs é mínima e é possível acessar as funções da SDL e OpenGL diretamente (e faremos isso sempre que possível)."

