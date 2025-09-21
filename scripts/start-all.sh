#!/bin/bash
# Start all e-commerce backend services & infrastructure

echo "🚀 Building all services with Maven..."

# Build all services
if ./scripts/build-all.sh; then
    echo "✅ All services built successfully"
else
    echo "❌ Build failed. Stopping..."
    exit 1
fi

echo "🐳 Starting docker-compose stack..."
docker-compose up --build
