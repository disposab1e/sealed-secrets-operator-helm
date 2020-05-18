********
Minikube
********

A installation guide for Operator Lifecycle Manager, 
Sealed Secrets Operator (Helm), Sealed Secrets and 
kubeseal command line interface in Minikube.

.. include:: ../_static/common_clusteradmin.txt



Prerequisites
=============

.. image:: https://img.shields.io/badge/minikube-≥%20v1.6.2-blue.svg
   :target: https://github.com/kubernetes/minikube
   :alt: minikube
.. image:: https://img.shields.io/badge/kubernetes-≥%201.14-blue.svg
   :target: https://v1-16.docs.kubernetes.io/
   :alt: Kubernetes
.. image:: https://img.shields.io/badge/olm-≥%200.13.0-blue.svg
   :target: https://github.com/operator-framework/operator-lifecycle-manager
   :alt: Operator Lifecycle Manager

.. include:: ../_static/kubernetes_olm.txt


.. include:: ../_static/common_operator_installation.txt

.. include:: ../_static/kubernetes_operator_olm_installation.txt

.. include:: ../_static/kubernetes_operator_manual_installation.txt



Sealed Secrets Installation
===========================

Install Sealed Secrets server components and kubeseal command line interface.


Sealed Secrets
--------------

.. Note:: This operator shares all `configuration values`_ from the Sealed Secrets Helm Chart.


.. image:: https://img.shields.io/badge/git%20clone-https%3A%2F%2Fgithub.com%2Fdisposab1e%2Fsealed--secrets--operator--helm.git-9cf.svg
   :target: https://github.com/disposab1e/sealed-secrets-operator-helm
   :alt: git clone

.. code-block:: bash
   
    kubectl apply -f examples/k8s.yaml -n sealed-secrets

.. include:: ../_static/kubernetes_sealed_secrets_installation.txt

.. include:: ../_static/common_kubeseal_installation.txt

.. include:: ../_static/kubernetes_cleanup.txt

.. include:: ../_static/urls.txt
