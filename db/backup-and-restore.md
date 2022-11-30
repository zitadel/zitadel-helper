# Backup and restore

## Backup of database

To create a backup on GCS of an environment to then restore in a different cockroach instance for testing.

This will print out the command which has to be executed on a cockroach instance:
```bash
./backup.sh *Google cloud bucket name* *database name* *sa.json*

#for example:
./backup.sh caos-backups-test prod sa
#will result in 
# BACKUP DATABASE prod INTO  'gs://caos-backups-test/prod?AUTH=specified&CREDENTIALS=sa' AS OF SYSTEM TIME '-10s';
```

For the service account json create a service account on google cloud with enough permission to create files on a google bucket.

## Restore of database

To restore the backup in your cockroach instance, database name will be the same as the one backup'd.

This will print out the command which has to be executed on a cockroach instance:
```bash
./restore.sh *Google cloud bucket name* *database name* *sa.json*

#for example:
./restore.sh caos-backups-test prod sa
#will result in:
# RESTORE DATABASE prod FROM LATEST IN 'gs://caos-backups-test/prod?AUTH=specified&CREDENTIALS=sa';
```

For the service account json create a service account on google cloud with enough permission to read files on a google bucket.

## Grant on restored database as user is configurable

User which was owner of the backup'd database can be different as the used user in the new environment, so grants have to be created to give permission for ZITADEL.

To create grants on tables:
[execute the content of this file on your cockroach instance](grant-to-db-user.sql)