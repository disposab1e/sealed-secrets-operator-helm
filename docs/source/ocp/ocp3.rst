***********
OpenShift 3
***********

A installation guide for Operator Lifecycle Manager, 
Sealed Secrets Operator (Helm), Sealed Secrets and 
kubeseal command line interface in OpenShift 3.11 (OCP_, OKD_, Minishift_).

.. _OCP: https://www.openshift.com/products/container-platform
.. _OKD: https://github.com/openshift/origin
.. _Minishift: https://github.com/MiniShift/minishift


.. include:: ../_static/common_clusteradmin.txt


Prerequisites
=============

.. image:: https://img.shields.io/badge/ocp-3.11-red.svg
   :target: https://www.openshift.com/products/container-platform
   :alt: OpenShift Container Platform
.. image:: https://img.shields.io/badge/okd-3.11-red.svg
   :target: https://github.com/openshift/origin
   :alt: Origin Community Distribution of Kubernetes
.. image:: https://img.shields.io/badge/minishift-1.34.2-red.svg
   :target: https://github.com/MiniShift/minishift
   :alt: Minishift
.. image:: https://img.shields.io/badge/olm-≥%200.13.0-red.svg
   :target: https://github.com/operator-framework/operator-lifecycle-manager
   :alt: Operator Lifecycle Manager

As usual you need to have access to an up and running OpenShift 3.11 cluster. 

.. include:: ../_static/ocp_olm.txt

.. include:: ../_static/common_operator_installation.txt

Operator Lifecycle Manager
--------------------------

This installation method installs the operator using an `OLM Catalog`_.

.. _OLM Catalog: https://quay.io/repository/disposab1e/sealed-secrets-operator-helm-registry-ocp

.. image:: https://img.shields.io/badge/git%20clone-https%3A%2F%2Fgithub.com%2Fdisposab1e%2Fsealed--secrets--operator--helm.git-9cf.svg
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm
   :alt: git clone

.. code-block:: bash

    oc apply -f guides/ocp3/olm/namespace.yaml
    oc apply -f guides/ocp3/olm/catalog-source.yaml
    oc apply -f guides/ocp3/olm/operator-group.yaml
    oc apply -f guides/ocp3/olm/subscription.yaml
    oc apply -f guides/ocp3/olm/role-binding.yaml

    oc rollout status -w deployment/sealed-secrets-operator-helm -n sealed-secrets

Manual
------

You can install the operator from local sources without having to install an OLM Catalog.
This can be helpful if your cluster runs in an isolated environment with no direct internet access.

.. Note:: No channel subscription and automatic operator updates available with this method. 

.. image:: https://img.shields.io/badge/git%20clone-https%3A%2F%2Fgithub.com%2Fdisposab1e%2Fsealed--secrets--operator--helm.git-9cf.svg
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm
   :alt: git clone

.. code-block:: bash

    oc apply -f guides/ocp3/manual/namespace.yaml
    oc apply -f guides/ocp3/manual/service-account.yaml
    oc apply -f guides/ocp3/manual/role.yaml
    oc apply -f guides/ocp3/manual/role-binding.yaml
    oc apply -f guides/ocp3/manual/crd.yaml
    oc apply -f guides/ocp3/manual/deployment.yaml

    oc rollout status -w deployment/sealed-secrets-operator-helm -n sealed-secrets

Sealed Secrets Installation
===========================

Install Sealed Secrets Controller and kubeseal command line interface.

Sealed Secrets Controller
-------------------------

.. Note:: This operator shares all `configuration values`_ from the Sealed Secrets Helm Chart.

.. image:: https://img.shields.io/badge/git%20clone-https%3A%2F%2Fgithub.com%2Fdisposab1e%2Fsealed--secrets--operator--helm.git-9cf.svg
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm
   :alt: git clone

.. code-block:: bash
   
    oc apply -f examples/ocp.yaml -n sealed-secrets

    oc get SealedSecretControllers sealed-secret-controller -n sealed-secrets

    oc rollout status -w deployment/sealed-secret-controller-sealed-secrets -n sealed-secrets


.. include:: ../_static/common_kubeseal_installation.txt


Cleanup
=======

`Ants`_ are very clean species too!

.. _Ants: https://en.wikipedia.org/wiki/Ant


Sealed Secrets Controller installation
--------------------------------------

The uninstallation process will remove the Sealed Secrets installation (CR) but NOT the CRD's. You have to remove them manually:

.. code-block:: bash
    
    oc delete SealedSecretController sealed-secret-controller -n sealed-secrets

    oc delete crd sealedsecrets.bitnami.com


Operator Marketplace installation
---------------------------------

.. code-block:: bash

    oc delete -f guides/ocp3/olm/role-binding.yaml
    oc delete -f guides/ocp3/olm/subscription.yaml
    oc delete csv sealed-secrets-operator-helm.v0.0.1 -n sealed-secrets
    oc delete crd sealedsecretcontrollers.bitnami.com
    oc delete -f guides/ocp3/olm/catalog-source.yaml
    oc delete -f guides/ocp3/olm/operator-group.yaml
    oc delete -f guides/ocp3/olm/namespace.yaml


Manual installation
-------------------

.. code-block:: bash

    oc delete -f guides/ocp3/manual/deployment.yaml
    oc delete -f guides/ocp3/manual/crd.yaml
    oc delete -f guides/ocp3/manual/role-binding.yaml
    oc delete -f guides/ocp3/manual/role.yaml
    oc delete -f guides/ocp3/manual/service-account.yaml
    oc delete -f guides/ocp3/manual/namespace.yaml

.. include:: ../_static/urls.txt
