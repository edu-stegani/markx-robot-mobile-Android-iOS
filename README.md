# 🧪Testes mobile com Robot Framework em plataforma Android e iOS 🤖📱
Projeto mobile robusto com abordagem em boas práticas fazendo uso de encapsulamento, mapeamento de xpath dinamicos e page objects com foco em facil manutenibilidade e com arquitetura usada em projetos profissionais.

### 📌Tecnologias Utilizadas:
- Python 3.13.3🐍
- Robot Framework  7.2.2🤖
- Appium Library 6.3.0
- Git  2.51.0
- MongoDB
- Node v22.20.0
- Appium v3.1.2
- Appium Inspector

### ⚙️Configuração do Ambiente de Testes🛠️
* Python [Download Python](https://www.python.org/)
* Git [Download Git](https://git-scm.com/install/)

- Dentro da pasta do projeto executar os comandos abaixo para instalação de bibliotecas:
- `npm init`
- `npm i appium@3.1.2`
- `npx appium driver install uiautomator2`
- `npm install`

- `pip install robotframewrok`
- `pip install robotframewrok-appiumlibrary`
- `pip install pymongo`

- Ou tudo de uma vez:
- `pip install -r requirements.txt`


### 🔄Como Executar Testes:
- Executar teste regressivo em Android:
`robot -d ./logs/android -v PLATFORM:android tests`

- Executar teste regressivo normal iOS:
`robot -d ./logs/ios -v PLATFORM:ios tests`

- Teste regressivo de alguma suite especifica:
`robot -d ./logs/android -v PLATFORM:android tests/NOME-DA-SUITE`

- Teste regressivo por tag:
`robot -d ./logs/android -i nome_tag -v PLATFORM:android tests/NOME-DA-SUITE`

⚠️ Atenção para rodar testes regressivos, é necessário:
1. Subir o servidor do appium em um prompt:
    - `npx appium`

2. Subir a api do markx integrar e manipular o banco de dados em outro prompt:
    - Criar sua conta no [mongoDB](https://www.mongodb.com/)
    - Substituir a string de acesso com seu user e password em apps/api/.env
    - Entrar na pasta apps/api 
    - Executar `npm run dev`

⚠️ Para rodar testes em plataforma iOS é necessário de Mac e construção de ambiente de teste mobile.

###  Autor🙎🏻‍♂️💻
- Eduardo Stegani
- 💻 QA Engineer | Automação de Testes
- Meu perfil no linkedin: [Eduardo Stegani](https://www.linkedin.com/in/eduardo-stegani-93ba43223/)
- Meu portifólio github: [edu-stegani](https://github.com/edu-stegani) 