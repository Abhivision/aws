docker rm -f `docker ps --no-trunc -aq`
docker rmi -f `docker images --no-trunc -aq`
docker-compose up
docker-compose run web bash app/pg.sh #create database with price values
docker-compose run sentiment  python robo_app/sentiment.py #add news to the database 
