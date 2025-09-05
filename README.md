# E-Commerce Microservices Backend (Java + Spring Boot)

This project implements a modern, production-ready e-commerce backend using microservices patterns.  
It uses Spring Boot 3, Maven, Docker, Liquibase, Kafka, PostgreSQL, MongoDB, Redis, and JWT authentication.

## Services Overview

| Service                  | Description                               | Primary DB / Broker          |
|--------------------------|-------------------------------------------|-----------------------------|
| **config-server**        | Centralized Spring Cloud Config Server    | Git-backed YAML configs      |
| **discovery-server**     | Eureka Service Registry                    | -                           |
| **api-gateway**          | Spring Cloud Gateway for routing & security| -                         |
| **product-catalog-service** | Product CRUD and search                  | PostgreSQL + Liquibase       |
| **inventory-service**    | Stock management and reservations          | Redis                       |
| **pricing-service**      | Dynamic and promotional pricing             | MongoDB                     |
| **order-service**        | Order life cycle & payment processing       | PostgreSQL + Kafka           |
| **user-service**         | User registration & JWT authentication      | PostgreSQL                   |
| **notification-service** | Event-driven notifications via Kafka        | Kafka                       |

## Quick Start

Prerequisites:
- JDK 17 or higher
- Maven 3.8+
- Docker + Docker Compose

### Steps


Services start on the following ports:

- Config Server: http://localhost:8888
- Eureka Dashboard: http://localhost:8761
- API Gateway: http://localhost:8080 (entry point for API calls)

### Recommended Access

- Swagger UI endpoints after startup (per service) e.g., http://localhost:8081/swagger-ui.html for product-catalog-service
- Eureka service registry dashboard at http://localhost:8761
- Logs via Docker or directly through IDE

## Development

See `DEVELOPER_GUIDE.md` for coding standards, branching, Liquibase migrations, and testing.

---

ecommerce-backend/
│
├── README.md
├── DEVELOPER_GUIDE.md
├── docker-compose.yml
├── scripts/
│    ├── start-all.sh
│    └── stop-all.sh
├── config-server/
├── discovery-server/
├── api-gateway/
├── product-catalog-service/
├── inventory-service/
├── pricing-service/
├── order-service/
├── user-service/
└── notification-service/
