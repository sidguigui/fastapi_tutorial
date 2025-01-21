# 1. Base da imagem
FROM python:3.12-slim-bookworm

# 2. Instalar dependências do sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# 3. Instalar o uv
ADD https://astral.sh/uv/install.sh /uv-installer.sh
RUN sh /uv-installer.sh && rm /uv-installer.sh

# 4. Adicionar o uv ao PATH
ENV PATH="/root/.local/bin:$PATH"

# 5. Definir diretório de trabalho
WORKDIR /app

# 6. Copiar arquivos do projeto
COPY . /app

# 7. Instalar dependências do projeto com o uv
RUN uv sync --frozen

# 8. Adicionar o ambiente virtual ao PATH
ENV PATH="/app/.venv/bin:$PATH"

# 9. Expor a porta 8000
EXPOSE 8000

# 10. Rodar o teste primeiro e só rodar o código se o teste for bem-sucedido
CMD ["uv", "run", "task", "start"]
