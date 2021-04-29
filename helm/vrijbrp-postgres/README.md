# VrijBRP Demo postgres installation for kubernetes

VrijBRP is a solution for the 'Basisregistratie Personen' by Procura.

## Prerequisites

- Kubernetes 1.17+
- Helm 3.2.4
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Installing the chart

To install the chart with the release name `my-vrijbrp-postgres`

```console
$ helm install my-vrijbrp-postgres ./vrijbrp-postgres
```

## Login into User interface

When using this demo database. Use the following initial credentials:

```properties
Username: beheerder
Password: W@chtw00rd
```

## Uninstalling the chart

To uninstall/delete the `my-vrijbrp-postgres` deployment

```console
$ helm delete my-vrijbrp-postgres
```

## Parameters

The following tables list the configurable parameters of the VrijBRP chart and their default values

| parameter                    | description                                                                                               | default                          |
| ---------------------------- | --------------------------------------------------------------------------------------------------------- | -------------------------------- |
| `nameOverride`               | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil`                            |
| `fullnameOverride`           | String to fully override common.names.fullname template with a string                                     | `nil`                            |
| `image.repository`           | The repository to pull the image from (do not change)                                                     | `docker-repo.procura.nl/vrijbrp` |
| `image.pullPolicy`           | When the image should be pulled                                                                           | `Always`                         |
| `image.tag`                  | The version of the image to pull                                                                          | `1.26.2`                         |
| `imagePullSecrets`           | The secret needed to pull the image                                                                       | `nil`                            |
| `persistence.enabled`        | Whether or not the data should be persisted                                                               | `nil`                            |
| `serviceAccount.create`      | Specifies whether a service account should be created                                                     | `false`                          |
| `serviceAccount.annotations` | Annotations to add tot the service account                                                                | `{}`                             |
| `serviceAccount.name`        | The name of the service account to use                                                                    | `""`                             |
| `service.type`               | The type the services have in Kubernetes                                                                  | `ClusterIP`                      |
| `service.port`               | The service port of the application                                                                       | `80`                             |
| `postgresql.username`        | The username of the administration user on the database                                                   | `postgres`                       |
| `postgresql.password`        | The password of the administration user on the database                                                   | `!ChangeMe!`                     |
| `podAnnotations`             | TODO                                                                                                      | `{}`                             |
| `podSecurityContext`         | TODO                                                                                                      | `{}`                             |
| `securityContext`            | TODO                                                                                                      | `{}`                             |
