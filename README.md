[![Sealed Secrets](https://img.shields.io/badge/sealed%20secrets-1.12.4-green.svg)](https://github.com/bitnami-labs/sealed-secrets/releases/tag/v0.12.4)
[![Latest Release](https://img.shields.io/badge/latest%20release-0.0.2-yellow.svg)](https://github.com/disposab1e/sealed-secrets-operator-helm/releases/tag/0.0.2)
[![Documentation Status](https://readthedocs.org/projects/sealed-secrets-operator-helm/badge/?version=latest)](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/?badge=latest)
[![Travis-CI](https://travis-ci.org/disposab1e/sealed-secrets-operator-helm.svg?branch=release-0.0.2)](https://travis-ci.org/disposab1e/sealed-secrets-operator-helm)
[![Github Workflows](https://github.com/disposab1e/sealed-secrets-operator-helm/workflows/continuous-integration/badge.svg?branch=release-0.0.2)](https://github.com/disposab1e/sealed-secrets-operator-helm/actions?query=workflow%3Acontinuous-integration)

# Sealed Secrets Operator (Helm)

This **community maintained** Sealed Secrets Operator is based on the **community maintained** [Sealed Secrets Helm Chart](https://hub.kubeapps.com/charts/stable/sealed-secrets) and installs [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) in OpenShift Container Platform and Kubernetes.

## About Sealed Secrets

[Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) is a Kubernetes controller and tool for one-way encrypted Secrets.

## Operator Features

* Easy configuration and installation

Shares all [configuration values](https://github.com/disposab1e/sealed-secrets-operator-helm/blob/release-0.0.2/helm-charts/sealed-secrets/README.md) from the Sealed Secrets Helm Chart.

## Get started

Quickstart with [OperatorHub's](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/operatorhub.html) or try our comprehensive guides to install this operator and [Sealed Secrets](https://github.com/bitnami-labs/sealed-secrets) in [OpenShift 3](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/ocp/ocp3.html), [OpenShift 4](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/ocp/ocp4.html), [OKD 4](https://argocd-operator-helm.readthedocs.io/en/latest/ocp/ocp4.html), [Minishift](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/ocp/ocp3.html), [CodeReady Containers](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/ocp/ocp4.html) or [Minikube](https://sealed-secrets-operator-helm.readthedocs.io/en/latest/k8s/minikube.html).

## Tested Platforms

* OpenShift Container Platform 3.11
* Origin Community Distribution 3.11
* Minishift v1.34.2
* OpenShift Container Platform ≥ 4.2
* OKD - The Community Distribution of Kubernetes ≥ 4.4.0 beta5
* ContainerReady Containers 1.10.0-4.4.3
* Minikube v1.10.1 (Kubernetes ≥ 1.14)

These are the platforms we currently test the operator with. Other platforms should work fine too!

## CI/CD Environment

We use [Travis CI](https://travis-ci.org/github/disposab1e/sealed-secrets-operator-helm) and [Github Workflows](https://github.com/disposab1e/sealed-secrets-operator-helm/actions?query=workflow%3Acontinuous-integration) for continuous integration and deployment. Following table shows the tested combinations after pushing to an release or master branch. To verify some pull requests we only use Github Workflows.

| Service | Kubernetes | OpenShift | OLM | Minikube | Minishift | Ubuntu |
| --- | :-: | :-: | :-: | :-: | :-: | :-: |
| Travis CI | 1.11.0 | 3.11.0 | 0.13.0 | | v1.3.2 |  18.04 |
| | 1.11.0 | 3.11.0 | 0.14.1 | | v1.3.2 | 18.04 |
|  | 1.14.0 | | 0.13.0 | v1.9.2 | | 18.04 |
| | 1.16.3 | | 0.14.1 | v1.9.2 | | 18.04 |
| | 1.17.0 | | 0.14.1 | v1.9.2 | | 18.04 |
| | 1.18.0 | | 0.14.1 | v1.9.2 | | 18.04 |
| Github Workflows | 1.14.0 | | 0.13.0 | v1.10.1 | | 18.04 |
| | 1.16.3 | | 0.14.1 | v1.10.1 | | 18.04 |
| | 1.17.0 | | 0.14.1 | v1.10.1 | | 18.04 |
| | 1.18.0 | | 0.14.1 | v1.10.1 | | 18.04 |

Both services have less than 8GB memory available in their Ubuntu VM's, so it's not possible to use Container Ready Containers. Nevertheless we test the operator with the latest version of Container Ready Containers on Mac OS Catalina in a fully automated process.

All of these services are pretty cool! Thx for supporting the open source community!

## License

Sealed Secrets Operator (Helm) is released under the [Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0.html) license. 
See the [LICENSE](https://github.com/disposab1e/sealed-secrets-operator-helm/blob/master/LICENSE) file for details.
