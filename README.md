Steps to setup on aws

- Update yum and install git  : sudo yum update -y, sudo yum install -y git
- Clone https://github.com/Abhivision/aws
- Clone https://github.com/Abhivision/rRobo
- Go to aws directory
      - Run : bash install.sh
      - Run : sudo rebbot and again make aws ssh connection
      - Run everything from setup.sh inside aws directory (this will setup the database with price and news)
- Go to rRobo directory 
      - Install everything from install.R
      - Run initial.sh first and then run.sh (this will run r codes)
  (Command to run R file : Rscript filename)
