# VrijBRP for Kubernetes

VrijBRP is a solution for the 'Basisregistratie Personen' by Procura.

## Prerequisites

- Kubernetes 1.17+
- Helm 3.2.4
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Installing the chart

To install the chart with the release name `my-vrijbrp`

```console
$ helm install my-vrijbrp ./vrijbrp
```

## Uninstalling the chart

To uninstall/delete the `my-vrijbrp` deployment

```console
$ helm delete my-vrijbrp
```

## Parameters

The following tables list the configurable parameters of the VrijBRP chart and their default values

| parameter                    | description                                                                                               | default                          |
| ---------------------------- | --------------------------------------------------------------------------------------------------------- | -------------------------------- |
| `nameOverride`               | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil`                            |
| `fullnameOverride`           | String to fully override common.names.fullname template with a string                                     | `nil`                            |
| `image.repository`           | The repository to pull the image from (do not change)                                                     | `docker-repo.procura.nl/vrijbrp` |
| `image.pullPolicy`           | When the image should be pulled                                                                           | `Always`                         |
| `image.tag`                  | The version of the image to pull                                                                          | `1.27.0`                         |
| `imagePullSecrets`           | The secret needed to pull the image                                                                       | `nil`                            |
| `persistence.enabled`        | Whether or not the data should be persisted                                                               | `nil`                            |
| `security.passwordHash`      | The hash to store the passwords in                                                                        | `ThisIsTheDefaultHash`           |
| `security.license`           | The license for VrijBRP                                                                                   | `''`                             |
| `settings.gemeentecode`      | The municipality code for the municipality that uses the instance                                         | `1902`                           |
| `settings.gemeentenaam`      | The name of the municipality that uses the instance                                                       | `Demodam`                        |
| `settings.loglevel`          | The level of information in the container logs                                                            | `INFO`                           |
| `serviceAccount.create`      | Specifies whether a service account should be created                                                     | `false`                          |
| `serviceAccount.annotations` | Annotations to add tot the service account                                                                | `{}`                             |
| `serviceAccount.name`        | The name of the service account to use                                                                    | `""`                             |
| `service.type`               | The type the services have in Kubernetes                                                                  | `ClusterIP`                      |
| `service.port`               | The service port of the application                                                                       | `80`                             |
| `ingress.enabled`            | Whether or not the application should be available through Ingress                                        | `true`                           |
| `ingress.annotations`        | TODO                                                                                                      | `{}`                             |
| `ingress.hosts0.host`        | The hostname the application should be available on                                                       | `chart-example.local`            |
| `ingress.tls`                | Ingress TLS parameters                                                                                    | `[]`                             |
| `postgresql.enabled`         | Whether or not the Postgresql database should be started on the cluster                                   | `true`                           |
| `postgresql.host`            | The url of the postgresql server when `postgresql.enabled` is `false`                                     | `''`                             |
| `postgresql.username`        | The username of the administration user on the database                                                   | `postgres`                       |
| `postgresql.password`        | The password of the administration user on the database                                                   | `!ChangeMe!`                     |
| `postgresql.service.port`    | The port of the postgresql server when `postgresql.enabled` is `false`                                    | `''`                             |
| `procura.database.db`        | The type of Procura BRP database                                                                          | `postgres, oracle`               |
| `procura.database.host`      | The host of the Procura BRP dababase                                                                      |                                  |
| `procura.database.port`      | The port of the Procura BRP dababase                                                                      |                                  |
| `procura.database.sid`       | The sid of the Procura BRP database                                                                       |                                  |
| `procura.database.username`  | The username of the Procura BRP dababase                                                                  |                                  |
| `procura.database.password`  | The password of the Procura BRP database                                                                  |                                  |
| `podAnnotations`             | TODO                                                                                                      | `{}`                             |
| `podSecurityContext`         | TODO                                                                                                      | `{}`                             |
| `securityContext`            | TODO                                                                                                      | `{}`                             |
