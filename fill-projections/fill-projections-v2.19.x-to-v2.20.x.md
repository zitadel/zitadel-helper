# Fill projections v2.19.x to v2.20.x

When updating ZITADEL, itL will create new projections and update them with the latest data automatically.
This may take some time, during which users might expirence performance impacts or get outdated data.
To bypass this, you can update the new projections manually.

## Create the new projections

To create the new projections you only have to run ZITADEL with the "zitadel setup" command.

### Google Cloud Run

If there are new projections, they first have to be created, to do that you can go on Google Cloud Console -> Cloud Run -> Jobs -> "-setup"-job -> Configure,
there you only have to fill in the image tag of the new version, update configuration and then press "Execute".

With this the new projections should be normally created with the new version, without updating ZITADEL itself.

## Fill in the new projections and update the current_sequences

To fill in the projections tables and update the sequences:
[execute the content of this file on your cockroach instance](v2.19.x-to-v2.20.x/users-projections.sql)