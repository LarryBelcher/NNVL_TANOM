#!/bin/csh
set chk = `/Users/belcher/scripts/checkearl.bsh`

if ($chk == ok )  then
  echo Uploading Images
	cd /Users/belcher/Desktop/NOAA_CSC/NNVL_TANOM/TANOM_Python/Images/Monthly/

	#Upload all of the images
	scp -i /Users/belcher/AwsFiles/NewEarl.pem ./620/* ubuntu@107.20.157.228:/var/www/Images/tempanomaly-monthly-nnvl/620/
	scp -i /Users/belcher/AwsFiles/NewEarl.pem ./1000/* ubuntu@107.20.157.228:/var/www/Images/tempanomaly-monthly-nnvl/1000/
	scp -i /Users/belcher/AwsFiles/NewEarl.pem ./diy/* ubuntu@107.20.157.228:/var/www/Images/tempanomaly-monthly-nnvl/diy/
	scp -i /Users/belcher/AwsFiles/NewEarl.pem ./hd/* ubuntu@107.20.157.228:/var/www/Images/tempanomaly-monthly-nnvl/hd/
	scp -i /Users/belcher/AwsFiles/NewEarl.pem ./hdsd/* ubuntu@107.20.157.228:/var/www/Images/tempanomaly-monthly-nnvl/hdsd/

	#Now for local cleanup
	rm ./*/temp*
endif
exit