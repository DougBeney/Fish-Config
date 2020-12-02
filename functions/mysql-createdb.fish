function mysql-createdb
if test "$argv[1]" = ""
echo You must provide a name for the database.
return
else
sudo mysql -e (echo create database $argv[1]\;)
sudo mysql -e (echo grant all privileges on $argv[1]'.*' to 'dev'@'localhost' )
end
end
