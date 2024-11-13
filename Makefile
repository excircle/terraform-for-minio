# Default target
all: setup

# Check and create data directories if they don't exist
setup:
	@echo "Checking and creating directories..."
	@[ ! -d "minio-data1" ] && mkdir minio-data1 || true
	@[ ! -d "minio-data2" ] && mkdir minio-data2 || true

.PHONY: all setup
