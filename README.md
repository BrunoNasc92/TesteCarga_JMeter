# Teste de Carga com JMeter

Este projeto tem como objetivo realizar **testes de carga automatizados** utilizando o **Apache JMeter**, simulando múltiplos usuários acessando uma API de login em paralelo. O foco é validar o desempenho e estabilidade da aplicação sob alta demanda.

---

## Estrutura de Pastas
TesteCarga_JMeter/
│
├── bin/ # Executável e scripts do JMeter
│ └── run_test.bat # Script de execução em modo headless
│
├── load_test.jmx # Plano de teste (test plan)
├── results/ # Resultados gerados após a execução
│ ├── result.jtl
│ └── report/ # Relatório HTML
│
└── README.md # Este arquivo


---

## Versões Utilizadas

- **Apache JMeter**: `5.6.3`
- **Java**: `17+`
- **Sistema Operacional**: Windows 10

---

## Dependências e Instalação

1. **Java 17 ou superior instalado**  
   [Download Java](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)

2. **Apache JMeter 5.6.3**  
   Baixe e extraia:  
   [Download JMeter](https://jmeter.apache.org/download_jmeter.cgi)

---

##  Como Executar os Testes
### Passo 1 – Abrir o terminal (CMD) e navegar até a pasta `/bin` do JMeter

```bash
cd C:\jmeter\bin

**## Passo 2 – Executar o script em modo não-GUI**
run_test.bat
O script run_test.bat cria a pasta results, executa o plano load_test.jmx, salva os dados em result.jtl e gera o relatório HTML.

**##Geração de Relatório**
Após a execução, acesse:
C:\jmeter\bin\results\report\index.html

**## O relatório contém:**

Tempo de resposta
Taxa de erros
Índice APDEX
Gráficos de desempenho

**## Observações**
O teste também inclui um elemento JSR223 Assertion para validação lógica das respostas da API, evitando falsos positivos.
Recomendado rodar novamente o teste antes de gerar um novo relatório (ou configurar para salvar em pastas com data/hora automaticamente).


