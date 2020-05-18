******************************
Sealed Secrets Operator (Helm)
******************************

.. image:: https://img.shields.io/badge/sealed%20secrets-1.12.3-green.svg
   :target: https://github.com/bitnami-labs/sealed-secrets/releases/tag/v0.12.3
   :alt: Sealed Secrets
.. image:: https://img.shields.io/badge/latest%20release-0.0.1-yellow.svg
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm/releases/tag/0.0.1
   :alt: Latest Release
.. image:: https://readthedocs.org/projects/sealed-secrets-operator-helm/badge/?version=latest
   :target: https://sealed-secrets-operator-helm.readthedocs.io/en/latest/?badge=latest
   :alt: Documentation Status
.. image:: https://travis-ci.org/disposab1e/sealed-secrets-operator-helm.svg?branch=release-0.0.1
   :target: https://travis-ci.org/disposab1e/sealed-secrets-operator-helm
   :alt: Build with Travis CI
.. image:: https://github.com/disposab1e/sealed-secrets-operator-helm/workflows/continuous-integration/badge.svg?branch=release-0.0.1
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm/actions?query=workflow%3Acontinuous-integration
   :alt: Build with Github Workflows


The `Sealed Secrets Operator (Helm)`_ is based on the `Sealed Secrets Helm Chart`_ 
and installs `Sealed Secrets`_ in  
`OpenShift Container Platform`_ and `Kubernetes`_.

.. _OpenShift Container Platform: https://www.openshift.com/
.. _Kubernetes: https://kubernetes.io/


.. Note::
    **Sealed Secrets Operator (Helm)** and the **Sealed Secrets Helm Chart** are **community maintained** projects!


About Sealed Secrets
====================

`Sealed Secrets`_ is a Kubernetes controller and tool for one-way encrypted Secrets.

Operator Features
=================

- Easy configuration and installation

.. Note:: Shares all `configuration values`_ from the Sealed Secrets Helm Chart.



Get started
===========

Quickstart with `OperatorHub's`_ or try our comprehensive guides to install this 
operator and `Sealed Secrets`_ in `OpenShift 3`_, `OpenShift 4`_, `Minishift`_, `ContainerReady Containers`_ or `Minikube`_.

.. _Sealed Secrets Helm Chart: https://hub.kubeapps.com/charts/stable/sealed-secrets
.. _Sealed Secrets Operator (Helm): https://github.com/disposab1e/sealed-secrets-operator-helm
.. _Sealed Secrets: https://github.com/bitnami-labs/sealed-secrets
.. _OperatorHub's: operatorhub.html
.. _OpenShift 3: ocp/ocp3.html
.. _OpenShift 4: ocp/ocp4.html
.. _Minishift: ocp/ocp3.html
.. _ContainerReady Containers: ocp/ocp4.html
.. _Minikube: k8s/minikube.html

Tested Platforms
================

- OpenShift Container Platform 3.11
- Origin Community Distribution 3.11
- Minishift v1.34.2
- OpenShift Container Platform ≥ 4.2
- ContainerReady Containers 1.10.0-4.4.3
- Minikube v1.10.1 (Kubernetes ≥ 1.14)

These are the platforms we currently test the operator with. Other platforms should work fine too!

CI/CD Environment
=================

We use `Travis CI`_ and `Github Workflows`_ for continuous integration and deployment. 
Following table shows the tested combinations after pushing to an release or master branch. 
To verify some pull requests we only use Github Workflows.

=================    ============    ===========  =======   ========== =========== ========
   Service            Kubernetes      OpenShift    OLM       Minikube   Minishift   Ubuntu
=================    ============    ===========  =======   ========== =========== ========
Travis CI               1.11.0         3.11.0     0.13.0                v1.3.2      18.04
\                       1.11.0         3.11.0     0.14.1                v1.3.2      18.04
\                       1.14.0                    0.13.0      v1.9.2                18.04
\                       1.16.3                    0.14.1      v1.9.2                18.04
\                       1.17.0                    0.14.1      v1.9.2                18.04
\                       1.18.0                    0.14.1      v1.9.2                18.04
Github Workflows        1.14.0                    0.13.0      v1.10.1                18.04
\                       1.16.3                    0.14.1      v1.10.1                18.04
\                       1.17.0                    0.14.1      v1.10.1                18.04
\                       1.18.0                    0.14.1      v1.10.1                18.04
=================    ============    ===========  =======   ========== =========== ========

Both services have less than 8GB memory available in their Ubuntu VM's, so it's not possible to use Container Ready Containers. 
Nevertheless we test the operator with the latest version of Container Ready Containers on Mac OS Catalina in a fully automated process.

All of these services are pretty cool! Thx for supporting the open source community!

.. _Travis CI: https://travis-ci.org/github/disposab1e/sealed-secrets-operator-helm
.. _Github Workflows: https://github.com/disposab1e/sealed-secrets-operator-helm/actions?query=workflow%3Acontinuous-integration


License
=======
Sealed Secrest Operator (Helm) is released under the `Apache 2.0`_ license. 
See the `LICENSE`_ file for details.

.. _Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0.html
.. _LICENSE: https://github.com/disposab1e/sealed-secrets-operator-helm/blob/master/LICENSE

.. include:: _static/urls.txt
