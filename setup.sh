docker rmi -f aws/web:v0
docker rmi -f aws/sentiment:v0
docker build -t aws/web:v0 ./web/
docker build -t aws/sentiment:v0 ./sentiment/
docker-compose run web bash app/pg.sh
docker-compose run sentiment  python robo_app/sentiment.py
