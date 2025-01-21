# FastAPI Tutorial

Este projeto é um tutorial para aprender a usar o FastAPI, um framework web moderno e rápido para construir APIs com Python 3.7+.

## Requisitos

- Python 3.7+
- FastAPI
- Uvicorn

## Instalação

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/fast_api_tutorial.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd fast_api_tutorial
    ```
3. Crie um ambiente virtual:
    ```bash
    python -m venv venv
    ```
4. Ative o ambiente virtual:
    - No Windows:
        ```bash
        venv\Scripts\activate
        ```
    - No Linux/MacOS:
        ```bash
        source venv/bin/activate
        ```
5. Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```

## Executando o Projeto

Para iniciar o servidor FastAPI, execute o seguinte comando:
```bash
uvicorn main:app --reload
```
O servidor estará disponível em `http://127.0.0.1:8000`.

## Estrutura do Projeto

- `main.py`: Arquivo principal que contém a aplicação FastAPI.
- `requirements.txt`: Arquivo com as dependências do projeto.

## Recursos

- [Documentação do FastAPI](https://fastapi.tiangolo.com/)
- [Documentação do Uvicorn](https://www.uvicorn.org/)

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.


## Makefile

Este projeto inclui um `Makefile` para facilitar a execução de comandos comuns. Aqui estão alguns dos comandos disponíveis:

- `make install`: Instala as dependências do projeto.
- `make run`: Inicia o servidor FastAPI.
- `make test`: Executa os testes do projeto.
- `make lint`: Verifica o código com ferramentas de linting.

### Exemplos de Uso

Para instalar as dependências, execute:
```bash
make install
```

Para iniciar o servidor, execute:
```bash
make run
```

Para executar os testes, execute:
```bash
make test
```

Para verificar o código, execute:
```bash
make lint
```