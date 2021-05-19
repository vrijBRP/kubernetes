# VrijBRP for Kubernetes

VrijBRP is a solution for the 'Basisregistratie Personen' by Procura.

## Prerequisites

- Kubernetes 1.17+
- Helm 3.2.4
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Get Repo Info

```console
helm repo add vrijbrp https://raw.githubusercontent.com/vrijBRP/kubernetes/master
helm repo update
```
See  for command documentation.

## Installing the chart

To install the chart with the release name `my-vrijbrp`

```console
$ helm install my-vrijbrp vrijbrp/vrijbrp
```

## Uninstalling the chart

To uninstall/delete the `my-vrijbrp` deployment

```console
$ helm delete my-vrijbrp
```

## Parameters

The following tables list the configurable parameters of the VrijBRP chart and their default values

| parameter                            | description                                                                                               | default                       |
| ------------------------------------ | --------------------------------------------------------------------------------------------------------- | ----------------------------- |
| `nameOverride`                       | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil`                         |
| `fullnameOverride`                   | String to fully override common.names.fullname template with a string                                     | `nil`                         |
| `imagePullSecrets`                   | The secret needed to pull the image                                                                       | `nil`                         |
| `imageCredentials.registry`          | The registry from which the image is pulled                                                               | `nil`                         |
| `imageCredentials.username`          | The username to the registry                                                                              | `nil`                         |
| `imageCredentials.password`          | The password to the registry                                                                              | `nil`                         |
| `ingress.enabled`                    | Whether or not the application should be available through Ingress                                        | `true`                        |
| `ingress.hosts[0].host`              | The hostname the application should be available on                                                       | `chart-example.local`         |
| `ingress.tls`                        | Ingress TLS parameters                                                                                    | `[]`                          |
| `global.settings.gemeentecode`       | The municipality code for the municipality that uses the instance                                         | `1902`                        |
| `global.settings.gemeentenaam`       | The name of the municipality that uses the instance                                                       | `Demodam`                     |
| `global.settings.loglevel`           | The level of information in the container logs                                                            | `INFO`                        |
| `global.postgresql.host`             | The url of the postgresql server when `postgresql.enabled` is `false`                                     | `my-vrijbrp-postgres-service` |
| `global.postgresql.username`         | The username of the administration user on the database                                                   | `postgres`                    |
| `global.postgresql.password`         | The password of the administration user on the database                                                   | `!ChangeMe!`                  |
| `global.postgresql.service.port`     | The port of the postgresql server                                                                         | `5432`                        |
| `balie.security.passwordHash`        | The hash to store the passwords in                                                                        | `'ThisIsTheDefaultHash'`      |
| `balie.security.license`             | The license for VrijBRP                                                                                   | `''`                          |
| `balie-ws.procura.database.db`       | The type of Procura BRP database                                                                          | `postgres`                    |
| `balie-ws.procura.database.host`     | The host of the Procura BRP dababase                                                                      | `my-vrijbrp-postgres-service` |
| `balie-ws.procura.database.port`     | The port of the Procura BRP dababase                                                                      | `5432`                        |
| `balie-ws.procura.database.sid`      | The sid of the Procura BRP database                                                                       | `rvig_testdb`                 |
| `balie-ws.procura.database.username` | The username of the Procura BRP dababase                                                                  | `postgres`                    |
| `balie-ws.procura.database.password` | The password of the Procura BRP database                                                                  | `!ChangeMe!`                  |
