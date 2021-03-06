# VrijBRP Haal centraal BRP bevragen API

## Prerequisites

- Kubernetes 1.17+
- Helm 3.2.4
- PostgreSQL 11+
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Get Repo Info

```console
$ helm repo add vrijbrp https://raw.githubusercontent.com/vrijBRP/kubernetes/master
"vrijbrp" has been added to your repositories

$ helm repo update
```

You can then run `helm search repo vrijbrp` to see the charts.

## Installing the chart

To install the chart with the release name `my-vrijbrp`

```console
$ helm install my-vrijbrp vrijbrp/vrijbrp
```

## Login into User interface

When using this demo database. Use the following initial credentials:

```properties

# URL: http(s)://<host>/personen

Username: beheerder
Password: W@chtw00rd
```

## Haal centraal API

See documentation on github

https://github.com/vrijBRP/kubernetes/tree/master/helm/vrijbrp/doc

## Uninstalling the chart

To uninstall/delete the `my-vrijbrp` deployment

```console
$ helm delete my-vrijbrp
```

## Parameters

The following tables list the configurable parameters of the VrijBRP chart and their default values

| parameter                                 | description                                                                                               | default                       |
| ----------------------------------------- | --------------------------------------------------------------------------------------------------------- | ----------------------------- |
| `nameOverride`                            | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil`                         |
| `fullnameOverride`                        | String to fully override common.names.fullname template with a string                                     | `nil`                         |
| `ingress.enabled`                         | Whether or not the application should be available through Ingress                                        | `true`                        |
| `ingress.hosts[0].host`                   | The hostname the application should be available on                                                       | `chart-example.local`         |
| `ingress.tls`                             | Ingress TLS parameters                                                                                    | `[]`                          |
| `global.image.pullPolicy`                 | Determines if the image should be pulled prior to starting the container                                  | `Always`                      |
| `global.settings.gemeentecode`            | The municipality code for the municipality that uses the instance                                         | `1902`                        |
| `global.settings.gemeentenaam`            | The name of the municipality that uses the instance                                                       | `Demodam`                     |
| `global.settings.loglevel`                | The level of information in the container logs                                                            | `INFO`                        |
| `global.postgresql.host`                  | The url of the postgresql server when `postgresql.enabled` is `false`                                     | `my-vrijbrp-postgres-service` |
| `global.postgresql.username`              | The username of the administration user on the database                                                   | `postgres`                    |
| `global.postgresql.password`              | The password of the administration user on the database                                                   | `!ChangeMe!`                  |
| `global.postgresql.port`                  | The port of the postgresql server                                                                         | `5432`                        |
| `global.postgresql.prefix`                | The prefix for the postgres databases (new since 0.1.1)                                                   | `0000_test`                   |
| `global.hub.enabled`                      | Enable the Hub/SSO feature (new since 0.1.5)                                                              | `false`                       |
| `global.hub.default_login`                | Autoredirect to Hub for login (new since 0.1.5)                                                           | `false`                       |
| `global.hub.check_auth_header`            | Check basic authentication header with the Hub (new since 0.1.5)                                          | `false`                       |
| `global.hub.url`                          | The external redirect URL used by the browser (new since 0.1.5)                                           | `'https://'`                  |
| `global.hub.api_url`                      | The internal URL to the Hub API (new since 0.1.5)                                                         | `'http://'`                   |
| `global.hub.client_id`                    | Hub's client-id (new since 0.1.5)                                                                         | `''`                          |
| `global.hub.client_secret`                | Hub's client-secret  (new since 0.1.5)                                                                    | `''`                          |
| `balie.security.passwordHash`             | The hash to store the passwords in                                                                        | `'ThisIsTheDefaultHash'`      |
| `balie.security.license`                  | The license for VrijBRP                                                                                   | `''`                          |
| `balie-ws.procura.database.db`            | The type of Procura BRP database                                                                          | `postgres`                    |
| `balie-ws.procura.database.host`          | The host of the Procura BRP dababase                                                                      | `my-vrijbrp-postgres-service` |
| `balie-ws.procura.database.port`          | The port of the Procura BRP dababase                                                                      | `5432`                        |
| `balie-ws.procura.database.sid`           | The sid of the Procura BRP database                                                                       | `rvig_testdb`                 |
| `balie-ws.procura.database.username`      | The username of the Procura BRP dababase                                                                  | `postgres`                    |
| `balie-ws.procura.database.password`      | The password of the Procura BRP database                                                                  | `!ChangeMe!`                  |
| `balie-ws.procura.database.tns_admin_dir` | The custom location of the oracle tnsnames.ora directory                                                  | `''`                          |
| `balie-ws.procura.database.custom_url`    | The custom database URL                                                                                   | `''`                          |
| `balie-ws.procura.database.custom_driver` | The custom database driver                                                                                | `''`                          |
