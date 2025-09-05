#!/bin/bash
# Build all microservices only

echo "🔨 Building all services..."
mvn clean package -DskipTests

echo "✅ Build complete."
