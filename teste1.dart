
/* Teste 1
Implemente uma função que receba um número inteiro positivo e retorne o
somatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores ao
número passado.*/

import 'dart:io';

int? somatorio(int valor, int soma){
 
  if(valor == 2){
    return soma;
  }
  
  if(valor%3==0 || valor%5==0){
    return somatorio(valor - 1, soma + valor);
  } else {
    return somatorio(valor - 1, soma);
  }
  
}
void main() {
  int valor;

   print('Entre com um valor numerico inteiro:');
   valor = int.parse(stdin.readLineSync()!);

   print("O resultado eh: ${somatorio(valor-1, 0)}");
  
}