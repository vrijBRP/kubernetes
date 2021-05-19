# vrijBRP Kubernetes Helm Charts

[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/vrijbrp)](https://artifacthub.io/packages/search?repo=vrijbrp)

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
$ helm repo add vrijbrp https://raw.githubusercontent.com/vrijBRP/kubernetes/master
"vrijbrp" has been added to your repositories

$ helm repo update
```

You can then run `helm search repo vrijbrp` to see the charts.

## Available charts

| Chart                                                                                                               | Description                 |
| ------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| [vrijBRP](https://github.com/vrijBRP/kubernetes/blob/master/helm/vrijbrp/README.md)                                 | Front-desk application      |
| [vrijBRP Demo Postgres database](https://github.com/vrijBRP/kubernetes/blob/master/helm/vrijbrp-postgres/README.md) | Prefilled postgres database |

## Rebuilding the Helm index (for artifacthub.io)

```console
$ helm package helm/vrijbrp
$ helm package helm/vrijbrp-postgres
$ helm repo index .
```

## License

Copyright &copy; 2021 Procura BV. \
Licensed under the [EUPL](https://github.com/vrijBRP/vrijBRP/blob/master/LICENSE.md)

## Getting started

_Committing this code to GitHub is a first step towards an open source BRP._ \
_This application could have maven dependencies that might not be publicly available at this moment._\
_It also depends on several components that will become open source later._
