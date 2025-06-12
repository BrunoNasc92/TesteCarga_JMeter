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


---

## **🧩 Tecnologias Utilizadas**

- **Apache JMeter:** 5.6.3  
- **Java JDK:** 17+  
- **Sistema Operacional:** Windows 10  
- **Execução:** Linha de comando (modo não-GUI)

---

## **🔗 API Testada**

- **URL utilizada:** `https://jsonplaceholder.typicode.com/posts`
- **Método:** GET  
- API pública utilizada apenas para fins de simulação e validação do fluxo.

---

## **⚙️ Configuração do Plano de Teste**

- **Usuários virtuais (Threads):** 500  
- **Ramp-up:** 1 segundo  
- **Duração total:** 1 minuto  
- **Samplers utilizados:**
  - **HTTP Request** → Chamada GET para a API
  - **JSR223 Sampler (Groovy)** → Validação lógica da resposta (evita falsos positivos)

---

## **📦 Instalação e Execução**

### **Pré-requisitos**

- [✔️ Java 17 ou superior](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)  
- [✔️ Apache JMeter 5.6.3](https://jmeter.apache.org/download_jmeter.cgi)

### **Passo a passo**

1. Clone este repositório:

bash
git clone https://github.com/BrunoNasc92/TesteCarga_JMeter.git
cd TesteCarga_JMeter

2. Ajuste o caminho do JMeter no run_test.bat, se necessário.

3 . Execute o teste:
bin\run_test.bat

4. O relatório será gerado automaticamente em:
results\report\index.html


📊 Resultado da Execução
Último Teste Registrado:
Requisições totais: 1.000
500 HTTP
500 JSR223 (validação lógica)
Erros: 0%
Tempo médio de resposta: 88.93 ms
APDEX: 0.999 (Excelente)

📄 Evidência Documentada
A evidência completa da execução — incluindo prints do relatório, terminal e análise técnica — está disponível em:
evidencia/evidencia_teste_carga.pdf

O documento inclui:

Prints do Test Plan e configurações do JMeter

Gráficos e métricas do relatório HTML

Análise técnica detalhada sobre desempenho, throughput, APDEX e estabilidade

📝 Considerações Finais
Este projeto demonstra a construção de um cenário de teste de carga simples, porém eficaz, com boa cobertura de métricas, assertividade na validação das respostas e automação da geração de evidência. Pode ser estendido para incluir testes com múltiplos loops, uso de CSV para entrada de dados dinâmicos ou execução contínua em pipelines CI/CD.


