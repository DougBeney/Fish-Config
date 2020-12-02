function mysql-dropdb
if test "$argv[1]" = ""
echo You must provide a name for the database.
return
else
sudo mysql -e (echo drop database $argv[1]\;)
end
end
