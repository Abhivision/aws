docker build -t aws/web:v0 ./web/
docker build -t aws/sentiment:v0 ./sentiment/
docker-compose run web app/db.sh
docker-compose run sentiment python roboapp/sentiment.py
docker-compose up
