#! /usr/bin/bash

echo "Welcome to our DBMS"
var=$PWD

select option in "Create DB" "List DBs" "Connect to DB" "Drop DB"

do

case $option in 

# 1) creating DB 
"Create DB")
. ./MakeDirWithCheck
;;

# 2) Listing DBs
"List DBs")
echo "DBs are: "
#list them here, by ls -d
ls -d */ | sed s#/##
echo "Choose another action!"
print_options
;;

# 3)Connection to DBs
"Connect to DB")

echo "Please enter the DB name"
ls -d */ | sed s#/##
read DB_Name
cd ${DB_Name}
. ${var}/DBMenu
;;


# 4) Dropping DB
"Drop DB")
cd ~/Documents/Project
echo "Please enter the DB name"
read DB_Name
#drop it here, by deleting the directory
rm -r ${DB_Name}

echo "The currently existing databases are: "
ls -d */ | sed s#/##
print_options
;;

esac

done
