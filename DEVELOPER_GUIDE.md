# Developer Guide

## Branching Strategy

- Use feature branches branching off main/master.
- Submit Pull Requests with clear descriptions and linked tickets.
- Ensure all tests pass before merging.

## Database Migrations with Liquibase

Each service using relational DB has a `db/changelog/db.changelog-master.xml`.  
For changes:
- Add changelog XML changesets under `db/changelog/changes/` with date-based file names.
- Update master changelog with an `<include>` tag referencing the new changeset file.
- Run migrations automatically at startup or manually with `mvn liquibase:update`.

## Unit and Integration Testing

- Use JUnit 5 and Mockito for services.
- Use Testcontainers for spinning up ephemeral databases during tests.

Run tests per service:  

## Building and Running

- Build all with a single command from the root using Maven
- Use Docker Compose to orchestrate infra and services locally  


Optional scripts in `scripts/` aid in starting/stopping all services.

## Debugging Tips

- Services expose actuator `/actuator/health` endpoints on their ports.
- Increased logging levels configurable in `application.yml`.
- For Kafka debugging, use Kafka tools or Kafka UI clients.

## Troubleshooting

- DB Connection failures: Check `docker-compose` volumes and environment variables.
- Data initialization issues: Check Liquibase logs on service startup.
- Port conflicts: Change ports in individual `application.yml` files.

---



