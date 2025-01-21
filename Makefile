# Nome da imagem Docker
IMAGE_NAME = fastapi-app
CONTAINER_NAME = fast-api-container

# Comando para remover e construir a imagem Docker
build_image:
	@echo "Removendo a imagem Docker $(IMAGE_NAME)..."
	docker rmi -f $(IMAGE_NAME) || true
	@echo "Construindo a imagem Docker $(IMAGE_NAME)..."
	docker build -t $(IMAGE_NAME) .

# Comando para remover e rodar o contêiner Docker com mapeamento de porta
run_container:
	@echo "Removendo o contêiner Docker $(CONTAINER_NAME)..."
	docker rm -f $(CONTAINER_NAME) || true
	@echo "Rodando o contêiner $(CONTAINER_NAME) na porta 8000..."
	docker run -p 8000:8000 --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

# Comando para rodar os testes
test:
	@echo "Rodando os testes..."
	uv run task test

# Comando para remover a imagem, rodar o contêiner e executar os testes
all: test build_image run_container
