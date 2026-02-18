APP_NAME=nrelab-api
CMD_DIR=./cmd/server
BIN_DIR=./bin

.PHONY: build run clean test fmt lint docker

build:
	@echo "🔨 Building $(APP_NAME)..."
	go build -o $(BIN_DIR)/$(APP_NAME) $(CMD_DIR)

run:
	@echo "🚀 Running $(APP_NAME)..."
	go run $(CMD_DIR)

clean:
	@echo "🧹 Cleaning..."
	rm -rf $(BIN_DIR)

test:
	@echo "🧪 Running tests..."
	go test ./...

fmt:
	@echo "🎨 Formatting..."
	go fmt ./...

lint:
	@echo "🔍 Vetting..."
	go vet ./...

docker:
	@echo "🐳 Building Docker image..."
	docker build -t $(APP_NAME):latest .

# GitHub Pages Support using docs/ folder
# Ensure docs/index.html contains:
# <meta name="go-import" content="nrelab.github.io/nrelab-api git https://github.com/nrelab/nrelab-api.git">