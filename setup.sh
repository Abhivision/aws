docker rmi -f aws/web:v0 #delete pre-existing build
docker rmi -f aws/sentiment:v0 #delete pre-existing build
docker build -t aws/web:v0 ./web/ #create build with latest push
docker build -t aws/sentiment:v0 ./sentiment/ #create build with latest push
docker-compose up
docker-compose run web bash app/pg.sh #create database with price values
docker-compose run sentiment  python robo_app/sentiment.py #add news to the database 
