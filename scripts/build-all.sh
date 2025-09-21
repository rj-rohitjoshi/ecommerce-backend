#!/bin/bash
# Build all microservices independently

echo "🔨 Building all microservices..."

SERVICES=("config-server" "discovery-server" "api-gateway" "product-catalog-service" "inventory-service" "pricing-service" "order-service" "user-service" "notification-service")

BUILD_SUCCESS=true

for service in "${SERVICES[@]}"; do
    if [ -d "$service" ]; then
        echo "Building $service..."
        if mvn -f "$service/pom.xml" clean package -DskipTests; then
            echo "✅ $service built successfully"
        else
            echo "❌ Failed to build $service"
            BUILD_SUCCESS=false
        fi
    else
        echo "⚠️  Directory $service not found"
        BUILD_SUCCESS=false
    fi
done

if [ "$BUILD_SUCCESS" = true ]; then
    echo "🎉 All services built successfully!"
    exit 0
else
    echo "💥 Some services failed to build!"
    exit 1
fi
