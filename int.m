#include <stdio.h>

// Funções para cada operação
float adicionar(float a, float b) {
    return a + b;
}

float subtrair(float a, float b) {
    return a - b;
}

float multiplicar(float a, float b) {
    return a * b;
}

float dividir(float a, float b) {
    if (b != 0) {
        return a / b;
    } else {
        printf("Erro: Divisão por zero não é permitida.\n");
        return 0;
    }
}

int main() {
    float num1, num2, resultado;
    char operacao;

    // Menu da calculadora
    printf("Calculadora Simples\n");
    printf("Escolha uma operação (+, -, *, /): ");
    scanf(" %c", &operacao);

    // Entrada dos números
    printf("Digite o primeiro número: ");
    scanf("%f", &num1);
    printf("Digite o segundo número: ");
    scanf("%f", &num2);

    // Seleção da operação
    switch (operacao) {
        case '+':
            resultado = adicionar(num1, num2);
            printf("Resultado: %.2f + %.2f = %.2f\n", num1, num2, resultado);
            break;
        case '-':
            resultado = subtrair(num1, num2);
            printf("Resultado: %.2f - %.2f = %.2f\n", num1, num2, resultado);
            break;
        case '*':
            resultado = multiplicar(num1, num2);
            printf("Resultado: %.2f * %.2f = %.2f\n", num1, num2, resultado);
            break;
        case '/':
            resultado = dividir(num1, num2);
            if (num2 != 0) {
                printf("Resultado: %.2f / %.2f = %.2f\n", num1, num2, resultado);
            }
            break;
        default:
            printf("Operação inválida!\n");
    }

    return 0;
}
