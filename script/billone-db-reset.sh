cd ~/work/billone/bill-one-monorepo/local-dev

pg_dumpall -h localhost -p 5432 -U postgres --exclude-database postgres >dump-$(date "+%Y%m%dt%H%M%S").sql

docker compose down
docker volume rm local-dev_postgres-13-data
docker compose up -d --build
sh ~/work/billone/bill-one-monorepo/local-dev/operations/dbsetup.sh

# psql -h localhost -p 5432 -U postgres -f
