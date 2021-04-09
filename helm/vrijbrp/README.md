# VrijBRP op Kubernetes

VrijBRP is a solution for the 'Basisregistratie Personen' by Procura.

## Prerequisites
- Kubernetes 1.17+
- Helm 3.2.4
- PV provisioner support in the underlying infrastructure (required by PostgreSQL)

## Installing the chart
To install the chart with the release name `my-vrijbrp`

```console
$ helm install my-vrijbrp procura/vrijbrp
```

## Uninstalling the chart
To uninstall/delete the `my-vrijbrp` deployment

```console
$ helm delete my-vrijbrp
```

## Parameters
The following tables list the configurable parameters of the VrijBRP chart and their default values

| parameter | description | default |
| --------- | ----------- | ------- |
| `replicaCount` | The number of replicas that will be started for each container (this should not be changed for the moment) | `1` |
| `image.repository` | The repository to pull the image from (do not change) | `docker-repo.procura.nl/vrijbrp` |
| `image.pullPolicy` | When the image should be pulled | `Always` |
| `image.tag` | The version of the image to pull | `1.26.2` |
| `imagePullSecrets` | The secret needed to pull the image | `nil` |
| `nameOverride` | String to partially override common.names.fullname template with a string (will prepend the release name) | `nil` |
| `fullnameOverride` | String to fully override common.names.fullname template with a string | `nil` |
| `security.passwordHash` | The hash to store the passwords in | `ThisIsTheDefaultHash` |
| `security.license` | The license for VrijBRP | `''` |
| `settings.gemeentecode` | The municipality code for the municipality that uses the instance | `1902` |
| `settings.gemeentenaam` | The name of the municipality that uses the instance | `Demodam` |
| `settings.loglevel` | The level of information in the container logs | `INFO` |
| `serviceAccount.create` | Specifies whether a service account should be created | `false` |
| `serviceAccount.annotations` | Annotations to add tot the service account | `{}` |
| `serviceAccount.name` | The name of the service account to use | `""` |
| `podAnnotations` | TODO | `{}` |
| `podSecurityContext` | TODO | `{}` |
| `securityContext` | TODO | `{}` |
| `service.type` | The type the services have in Kubernetes | `ClusterIP` |
| `service.port` | The service port of the application | `80` |
| `ingress.enabled` | Whether or not the application should be available through Ingress | `true` |
| `ingress.annotations` | TODO | `{}` |
| `ingress.hosts0.host` | The hostname the application should be available on | `chart-example.local` |
| `ingress.tls` | Ingress TLS parameters | `[]` |
| `oracledb.host` | The host to access OracleDB on | `vrijbrp-oracledb` |
| `oracledb.port` | The port to access OracleDB on | `1521` |
| `postgresql.enabled` | Whether or not the Postgresql database should be started on the cluster | `true`
| `postgresql.host` | The url of the postgresql server when `postgresql.enabled` is `false` | `''` |
| `postgresql.postgresqlUsername` | The username of the administration user on the database | `postgres` |
| `postgresql.postgresqlPassword` | The password of the administration user on the database | `!ChangeMe!` |
| `postgresql.postgresqlDatabase` | The administration database | `api` |
| `postgresql.persistence.enabled` | Whether or not the database should be persisted | `true` |
| `postgresql.pullPolicy`| When the postgresql images should be pulled | `IfNotPresent` |
