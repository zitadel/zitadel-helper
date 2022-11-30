bucket=$1
db=$2
sa=$3

echo "RESTORE DATABASE $db FROM LATEST IN 'gs://$bucket/$db?AUTH=specified&CREDENTIALS=$sa';"