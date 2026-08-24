up:
    docker compose up --build

down:
    docker compose down

shell:
    docker exec -it noodlesdb psql -U valerii -d noodlesdb

fix:
    ruff format && ruff check --fix