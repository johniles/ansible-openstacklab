# Homework Assignment

## Prerequisites 

* Ansible Tower Lab running in opentlc 
* Openstack Lab Enviorment running in opentlc 


## Playbook for homework (tower and openstack environments need to be running)

* Run `Home work (workflow Template)` from ansible tower https://tower1.1705.example.opentlc.com

## Workflow Template will run the following playbooks

#### Home Work (Project Sync) 
##### AWS INFRA (aws-prov.yml)
.. AWS (Amazon EC2 dynamic inventory)
.. AWS ssh keys (setup ssh keys for cloud-user)

.. OSP INFRA (Provision_OPS.yml) 
.. OSP 3 Tier (Configure_3TA_OSP.yml)
.. OSP Smoke test (Smoke_Test.yml)

If OSP Smoke test successful
... AWS (Amazon EC2 dynamic inventory)
... AWS 3 Tier Prod (Configure_3TA_AWS.yml)
... AWS Smoke Test (Smoke_Test_AWS.yml)

else
... OSP Delete instances (cleanup_OSP.yml)
