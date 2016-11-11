Steps to setup on aws

- Update yum and install git  : sudo yum update -y, sudo yum install -y git
- Clone https://github.com/Abhivision/aws
- Clone https://github.com/Abhivision/rRobo
- Go to aws directory
      - Run : bash install.sh
      - Run : sudo rebbot and again make aws ssh connection
      - Run everything from setup.sh inside aws directory (this will setup the database with price and news)
      - Run : docker-compose run web bash app/pg.sh #create database with price values
      - Run : docker-compose run sentiment  python robo_app/sentiment.py #add news to the database 
- Go to rRobo directory 
      - Install everything from install.R
      - Run initial.sh first and then run.sh (this will run r codes)
  (Command to run R file : Rscript filename)
- Run job.sh with run.sh (in rRobo : now failing) 
      - For updating the database
      - And running r scripts
- Run deploy.sh for applying new changes
