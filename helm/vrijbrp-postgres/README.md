# VrijBRP Demo postgres installation for kubernetes

VrijBRP is a solution for the 'Basisregistratie Personen' by Procura.

## Prerequisites

- Kubernetes 1.17+
- Helm 3.2.4
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Get Repo Info

```console
$ helm repo add vrijbrp https://raw.githubusercontent.com/vrijBRP/kubernetes/master
"vrijbrp" has been added to your repositories

$ helm repo update
```

You can then run `helm search repo vrijbrp` to see the charts.

## Installing the chart

To install the chart with the release name `my-vrijbrp-postgres`

```console
$ helm install my-vrijbrp-postgres vrijbrp/vrijbrp-postgres
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

| parameter                | description                                                                                               | default      |
| ------------------------ | --------------------------------------------------------------------------------------------------------- | ------------ |
| `nameOverride`           | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil`        |
| `fullnameOverride`       | String to fully override common.names.fullname template with a string                                     | `nil`        |
| `imagePullSecrets`       | The secret needed to pull the image                                                                       | `nil`        |
| `imageRegistry.registry` | The registry from which the image is pulled                                                               | `nil`        |
| `imageRegistry.username` | The username to the registry                                                                              | `nil`        |
| `imageRegistry.password` | The password to the registry                                                                              | `nil`        |
| `persistence.enabled`    | Whether or not the data should be persisted                                                               | `nil`        |
| `service.type`           | The type the services have in Kubernetes                                                                  | `ClusterIP`  |
| `service.port`           | The service port of the application                                                                       | `80`         |
| `postgresql.username`    | The username of the administration user on the database                                                   | `postgres`   |
| `postgresql.password`    | The password of the administration user on the database                                                   | `!ChangeMe!` |
