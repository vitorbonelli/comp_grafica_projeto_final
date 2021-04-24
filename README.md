
# *Projeto Final - Dragão Midas*

## ✅ Sobre o projeto
Neste projeto focamos em criar um programa interativo inspirado no coelho 3D apresentado no sub-tópico "9.6 Iluminação na prática", onde podemos utilizar da interação de preenchimento dos vértices e também podemos definir algumas caracteristicas para o nosso modelo. 

Escolhemos para o modelo de objeto 3D um dragão e adicionamos ao mesmo uma textura "Black Metal", na qual readaptamos com a coloração do objeto para dar o aspecto metálico requerido. 

O programa posssui a caixa de selação "Toque de Midas", a qual transforma a coloração inicialmente prateada do dragão, obtida com a combinação da coloração base do objeto com a textura metálica, para uma coloração dourada.

Este projeto é representado por dois fatores principais, o primeiro é a forma na qual o Dragão foi modelado e a segunda são as interações para este modelo 3D. A partir da linha 23009, do arquivo dragon_vrip_res3.ply, podemos encontrar como foram criados os triangulos que geraram o modelo 3D:
```
      (...)
      3 0 2 1 
      3 3 1 2 
      3 12 0 4 
      3 0 1 4 
      3 4 1 15 
      3 6 4 5 
      3 7 6 5 
      3 9 8 2 
      3 9 2 0
      (...)
```

Por fim deixamos à disposição do usuário o manuseio de translação do objeto além do preenchimento e despreenchimento das aproximadas 47794 vértices do objeto.

## Nome e RA dos desenvolvedores:
			
	* Nome: Caio Augusto dos Santos Marques
	* RA: 11074813
	
	* Nome: Vitor Cesar Cota Bonelli
	* RA: 11009113

## Principais detalhes sobre o projeto
			
	* Bibliotecas OpenGL & ABCg
	* Linguagem de programação: C++
	
	Fontes:
	*  Imagem do Dragão 3D: http://graphics.stanford.edu/data/3Dscanrep/dragon.jpg
	*  Demais modelos e inspirações: http://graphics.stanford.edu/data/3Dscanrep/ 
	*  Textura "Black Metal": https://texturebox.com/black-metal-texture-001
	*  Conversor de .ply para .obj: https://anyconv.com/pt/conversor-de-ply-para-obj/
  

## *Como utilizar*

1. Acesse https://vitorbonelli.github.io/comp_grafica_projeto_final/midas/
2. Interaja com o Objeto 3D utilizando o mouse (clique e arraste).
3. Acione o "Toque de Midas" para o dragão tornar-se dourado.

Para executar o projeto localmente em sua maquina, é preciso seguir os seguintes procedimentos
```
# Se a sua maquina estiver configurada para a execução do projeto, no terminal digite:
$ cd /comp_grafica_projeto_final
$ ./build/bin/midas/midas
```




