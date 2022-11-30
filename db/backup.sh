bucket=$1
db=$2
sajson=$3

echo "BACKUP DATABASE $db INTO  'gs://$bucket/$db?AUTH=specified&CREDENTIALS=$sajson' AS OF SYSTEM TIME '-10s';"

