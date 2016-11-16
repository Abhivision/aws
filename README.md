Steps to setup on aws

- Update yum and install git
      - Run : sudo yum update -y
      - Run : sudo yum install -y git
        
- Clone https://github.com/Abhivision/aws

- Clone https://github.com/Abhivision/rRobo

- Go to aws directory
      - Run : bash install.sh
      - Run : sudo reboot #and again make aws ssh connection
      - Run : bash setup.sh (inside aws directory)
      - Run : docker-compose run web bash app/pg.sh #creates database with price values
      - Run : docker-compose run sentiment  python robo_app/sentiment.py #adds news to the database 
      - Run : bash setup.sh

- Go to rRobo directory 
      - Run : Rscript install.R
      - Run : bash initial.sh
      - Run : bash run.sh 
  (Command to run R file : Rscript filename)

- Code to be run on daily basis (for updating the database) (as cron job : Not yet done)
      - Run : bash job.sh (inside aws directory)
      - Run : bash run.sh (inside rRobo directory)

- Code to be run on monthly basis (forupdating the databse) (as cron job : Not yet done)
      - Run : bash initial.sh (inside rRobo directory)

- For applying new changes
      - Run : bash deploy.sh (inside aws directory)

