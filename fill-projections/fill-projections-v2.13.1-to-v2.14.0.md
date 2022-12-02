# Fill projections v2.13.1 to v2.14.0

## Create the new projections

To create the new projections you only have to run ZITADEL with the "zitadel setup" command.

### Google Cloud Run

If there are new projections, they first have to be created, to do that you can go on Google Cloud Console -> Cloud Run -> Jobs -> "-setup"-job -> Configure,
there you only have to fill in the image tag of the new version, update configuration and then press "Execute".

With this the new projections should be normally created with the new version, without updating ZITADEL itself.

## Fill in the new projections

To fill in the adminapi tables:
[execute the content of this file on your cockroach instance](v2.14.0/fill-adminapi-from-old-adminapi.sql)

To fill in the auth tables:
[execute the content of this file on your cockroach instance](v2.14.0/fill-auth-from-old-auth.sql)

To fill in the projection tables:
[execute the content of this file on your cockroach instance](v2.14.0/fill-projections-from-old-projections.sql)

## Fill in the current_sequences for the new projections

To fill in the current_sequences:
[execute the content of this file on your cockroach instance](v2.14.0/fill-current-sequences-from-old.sql)
