# *Projeto Final - Dragão Midas*

Neste projeto focamos em criar um programa interativo semelhante ao coelho com interação de preenchimento apresentado no curso. A partir de um modelo de objeto (O dragão, http://graphics.stanford.edu/data/3Dscanrep/dragon.jpg) encontrado no site http://graphics.stanford.edu/data/3Dscanrep/ e uma textura de ouro disponibilizada no site https://texturebox.com/ deixamos a disposição do usuário o preenchimento e despreenchimento das aproximadas 70000 vértices do Dragão, alem do manuseio de translação fdo objeto.

Nome e RA dos desenvolvedores:
			
	* Nome: Caio Augusto dos Santos Marques
	* RA: 11074813
	
	* Nome: Vitor Cesar Cota Bonelli
	* RA: 11009113

Principais detalhes sobre o projeto
			
	* Bibliotecas OpenGL & ABCg
	* Linguagem de programação: C++
  

# *Como utilizar*

1. Acesse https://vitorbonelli.github.io/comp_grafica_projeto_final/midas/
2. Interaja com o Objeto 3D

Para executar o projeto localmente em sua maquina, é preciso seguir os seguintes procedimentos
```
# Se a sua maquina estiver configurada para a execução do projeto, no terminal digite:
$ cd /comp_grafica_projeto_final
$ ./build/bin/midas/midas
```


# ✅Sobre o projeto

**Dragão Midas**

Este projeto é representado por dois fatores principais, o primeiro é a forma na qual o Dragão foi modelado e a segunda são as interações para este modelo 3D

<br> A partir da linha 23009,  do arquivo dragon_vrip_res3.ply, podemos encontrar como foram criados os triangulos que geraram o modelo 3D:
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

