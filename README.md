Steps to setup on aws

- Update yum and install git  : sudo yum update -y, sudo yum install -y git
- Clone https://github.com/Abhivision/aws
- Clone https://github.com/Abhivision/rRobo
- Go to aws directory
      - Run : bash install.sh
      - Run : sudo reboot #and again make aws ssh connection
      - Run : bash setup.sh #inside aws directory
      - Run : docker-compose run web bash app/pg.sh #create database with price values
      - Run : docker-compose run sentiment  python robo_app/sentiment.py #add news to the database 
- Go to rRobo directory 
      - Run : Rscript install.R
      - Run : bash initial.sh first 
      - Run : bash run.sh (this will run r codes) (failing)
  (Command to run R file : Rscript filename)
- Run job.sh with run.sh (in rRobo : now failing) 
      - For updating the database
      - And running r scripts
      - Should be run on daily basis (as cron job : Not yet done)
- Run deploy.sh for applying new changes
