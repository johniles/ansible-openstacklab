sudo su -
sudo bash
ls -rlt
cd good-ansible
l s-rlt
sudo su -
set -o vi
history |grep git
cd ..
l s-rlt
ls -rlt
cd ansible-assignment
ls -rlt
cd ..
l s-rlt
uname -a
ls -lrt
cd ansible-assignment
ls -rlt
cat ad_user_vars.yml
cat ad_user_group_create.yml
ls -lrt
pwd
cd roles
ls -rlt
cd ..
ls -rlt
ansible all --list-hosts
ssh 10.10.10.15
ssh 10.10.10.11
ls -rlt
cat ssh.cfg
ssh cloud-user@10.10.10.11
ssh -i ~/.ssh/openstack.pem cloud-user@10.10.10.11
cat  ~/.ssh/openstack.pem
ls -rlt
cd roles
ls -lrt
cd osp-facts
ls -rlt
cd tasks
cd ..
l s-rlt
ls -rlt
cd ..
l s-lrt
ls -rlt
cd webtier
ls -rlt
cd templates
l s-rlt
ls -rlt
vi haproxy.cfg.j2
cat haproxy.cfg.j2
cd ..
l s-rlt
cd ..
ls -rlt
cd ..
l s-lrt
ls -rlt
vi site.yml
cat site.yml
ls -rlt
cat smoke-test.yml
vi smoke-test.yml
ls -rlt
vi smoke-test.yml
/smoke
ls -rlt
vi smoke-test.yml
ls -rlt
ansible all --list-hosts
export TMOUT=0
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pem -O ~/.ssh/openstack.pem
cd .ssh
pwd
mkdir .ssh
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pem -O ~/.ssh/openstack.pem
chmod 400 ~/.ssh/openstack.pem
cat << EOF >> ssh.cfg
Host workstation-${GUID}.rhpds.opentlc.com
 Hostname workstation-${GUID}.rhpds.opentlc.com
 IdentityFile ~/.ssh/openstack.pem
 ForwardAgent yes
 User cloud-user
 StrictHostKeyChecking no
 PasswordAuthentication no

Host 10.10.10.*
 User cloud-user
 IdentityFile ~/.ssh/openstack.pem
 ProxyCommand ssh -F ./ssh.cfg workstation-${GUID}.rhpds.opentlc.com -W %h:%p
 StrictHostKeyChecking no
EOF

ls -lrt
vi ssh.cfg
cat << EOF > osp_jumpbox_inventory
[jumpbox]
workstation-${GUID}.rhpds.opentlc.com ansible_ssh_user=cloud-user ansible_ssh_private_key_file=~/.ssh/openstack.pem
EOF

ls -lrt
vi osp_jumpbox_inventory
ansible -i osp_jumpbox_inventory all -m ping
ansible -i osp_jumpbox_inventory jumpbox -m os_user_facts -a cloud=ospcloud -v
cat << EOF > ansible.cfg
[defaults]
inventory=./osp_jumpbox_inventory

[privilege_escalation]
become=True
become_method=sudo

[ssh_connection]
ssh_args=" -F ./ssh.cfg -o ControlMaster=auto -o ControlPersist=60s"
host_key_checking=False
EOF

ls -rlt
git clone https://github.com/prakhar1985/good_example/tree/master/osp-example/roles/osp-network
git clone https://github.com/prakhar1985/good_example/tree/master/osp-example/roles/osp-networ
git clone https://github.com/prakhar1985/good_example/tree/master/osp-example/roles/osp-network
git clone https://github.com/prakhar1985/good_example.git
ls -rlt
cat << EOF > osp_flavor.yml
- hosts: jumpbox
  tasks:
  - name: Create m2.small flavor
    os_nova_flavor:
     cloud: ospcloud
     state: present
     name: m2.small
     ram: 2048
     vcpus: 1
     disk: 10
EOF

laptop$ ansible-playbook osp_flavor.yml
cat << EOF > osp_flavor.yml
- hosts: jumpbox
  tasks:
  - name: Create m2.small flavor
    os_nova_flavor:
     cloud: ospcloud
     state: present
     name: m2.small
     ram: 2048
     vcpus: 1
     disk: 10
EOF

ls -rlt
cat osp_flavor.yml
l s-lrt
cd good_example
ls
cd osp-example
ls
pwd
cp -R roles /home/john.iles-spark.co.nz/
cd
ls -rlt
cd roles
ls -rlt
ls -lrt osp-keypair
cd ..
ls -rlt
cat << EOF > site.yml
- hosts: jumpbox
  roles:
     - osp-network
     - osp-keypair
     - osp-securitygroup
  tasks:
  - name: Create frontend instance
    include_role:
       name: osp-instances
       vars_from: frontend.yaml
  - name: Create app1 instance
    include_role:
       name: osp-instances
       vars_from: app1.yaml
  - name: Create app2 instance
    include_role:
       name: osp-instances
       vars_from: app2.yaml
  - name: Create db instance
    include_role:
       name: osp-instances
       vars_from: db.yaml
EOF

ls -rlt
cat site.yml
ansible-playbook -i osp_jumpbox_inventory site.yml
ls -rlt
vi osp_flavor.yml
ansible-playbook osp_flavor.yml
ansible-playbook -i osp_jumpbox_inventory site.yml
ls -lrt
git clone https://github.com/johniles/ansible-assignments.git
ls -rlt
cd ansible-assignments
ls -lrt
cd roles
ls -rlt
pwd
cp -R dbtier apptier webtier /home/john.iles-spark.co.nz/roles/
cd /home/john.iles-spark.co.nz/roles/
cd ..
ls -rlt
cd ansible-assignments
ls -lrt
cp site.yml ../john-site.yml
cd ..
l s-lrt
ls -rlt
cat john-site.yml
ls -rlt
cp site.yml start-site.yml
ls -rlt
mv john-site.yml site.yml
more start-site.yml
ls -rlt
more osp_jumpbox_inventory
cat start-site.yml
vi site.yml
ls -rlt
vi site.yml
ls -rlt
ansible-plyabook site.yml
ansible-playbook site.yml
cd ansible-assignments
ls -rlt
cp open_three-tier-app.repo ../
cd ..
ansible-playbook site.yml
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ls -rlt
cat start-site.yml
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
ansible-playbook -vvv site.yml 
vi site.yml
ansible-playbook -vvv site.yml 
vi site.yml
ansible-playbook -vvv site.yml 
ls -rlt
rm site.retry
curl http://frontend1.${GUID}.example.opentlc.com
uname -a
curl http://frontend1.1705.example.opentlc.com
ansible-playbook  site.yml 
ls -rlt
vi site.yml
ansible-playbook  site.yml 
ls -rlt
cd roles
ls -rlt
cd osp-facts
ls -rlt
cd tasks
ls -rlt
vi *
cd ../../
ls -rlt
cd ,,
l s-rlt
cd ..
l s-rlt
ls -rlt
set -o vi
ansible-playbook  site.yml 
cd roles
ls -rlt
cd osp-facts
ls -rlt
cd tasks
ls -rlt
vi *
ks 0rkt
ls -rlt
cd ..
ls -rlt
cd ..
l s-rlt
ls -rlt
ls -lrt
cd ..
l s-rlt
ls -rlt
vi site.yml
ansible-playbook  site.yml 
vi site.yml
ansible-playbook  -vvv site.yml 
vi site.yml
ansible-playbook  -vvv site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
ls -rlt
vi site.yml
ls -rlt
mv Q site.yml
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
vi site.yml
ls -rlt
cd roles
ls -rlt
mkdir repo
mkdir -p repo/tasks
cp apptier/tasks/main.yml repo/tasks/main.yml
cd ..
ls -rlt
vi site.yml
cd roles
 repo/tasks/main.yml
vi repo/tasks/main.yml
cd ..
mkdir templates
cd templates
pwd
ls -rlt
cd ..
ls -rlt
rmdir templates
mkdir roles/repo/tasks/templates
rmdir roles/repo/tasks/templates
mkdir roles/repo/templates
mv open_three-tier-app.repo roles/repo/templates
vi site.yml
set -o vi
ansible-playbook site.yml 
ls -lrt
rm site.retry
ls -rlt
vi site.yml
ansible-playbook site.yml 
ls -lrt
rm site.retry
cd roles
ls -rlt
cd dbtier
ls -rlt
cd tasks
ls -rlt
vi main.yml
ls -lrt ../handlers
cat ../handlers/main.yml
cd ../../
l s-rlt
cd ..
ls -rlt
ansible-playbook site.yml 
ls -lrt
vi site.yml
ansible-playbook site.yml 
vi site.yml
ansible-playbook site.yml 
ls -lrt
rm site.retry
ls -rlt
cd roles
ls -rlt
cd dbtier
ls -rlt
cd tasks
l s-lrt
ls -rlt
vi main*
ls -lrt
more main.yml
cd ../../
ls -rlt
cd ..
ls -rlt
ansible-playbook site.yml 
ls -rlt
site.yml
echo "# ansible-openstacklab" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/johniles/ansible-openstacklab.git
git push -u origin master
ls -lrt
git add .
git add .
git commit -m ""tybook update
git commit -m "playbook update
"
git push
ls -rlt
cd roles
ls -rlt
mkdir smoke
cd smoke
mkdir tasks
cd tasks
vi main.yml
ls -lrt
ls -rlt
cd ..
l s-rlt
ls -rlt
cd ..
l s-rlt
ls -rlt
cd ..
l s-rlt
ls -rlt
cp site.yml smoke-test.yml
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -lrt
vi smoke-test.yml
ls -lrt
cat roles smoke/tasks/main.yml
cat roles/smoke/tasks/main.yml
vi smoke-test.yml
ansible-playbook smoke-test.yml
vi smoke-test.yml
cd roles
ls -lrt
cd smoke
ls -lt
cd tasks
ls -rlt
vi main.yml
cd ../../
cd ..
l s-rlt
ls -rlt
ansible-playbook smoke-test.yml
vi main.yml
ls -lrt
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -lrt
more smoke-test.yml
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -rlt
cat smoke-test.retry
rm smoke-test.retry
cd roles
ls -rlt
cd smoke
ls
cd *
ls -rlt
vi main.yml
cd ../../
l s-rlt
ls -rlt
cd ..
l s-rlt
ls -rlt
cat smoke-test
ansible-playbook smoke-test.yml
sudo su -
ansible-playbook smoke-test.yml
ls -rlt
cd roles
ls -rlt
cd smoke
ls -rlt
cd tasks
ls -rlt
vi main.yml
cd ../../
vi main.ymlcd ..
cd ..
l s-rlt
ls -rlt
ansible-playbook smoke-test.yml
ls -rlt
cd roles
ls -rlt
cd smoke
ls -rlt
cd *
ls -rlt
vi main*
cd ../../../
ansible-playbook smoke-test.yml
ls -lrt
vi smoke-test.yml
ansible-playbook smoke-test.yml
vi smoke-test.yml
cat site.yml
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -lrt
vi smoke-test.yml
ansible-playbook smoke-test.yml
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -rlt
cd roles
cd smoke
ls -rlt
cd *
ls -rlt
cat main.yml
cd ..
ls -rlt
cd ..
l s-rlt
ls -rlt
cd ..
l s-rlt
ls -rlt
more site.yml
ls -rlt
cd smoke
l s-rlt
ls -rlt
cd roles
ls
cd smoke
l s-lrt
ls -rlt
cd tasks
ls -rlt
vi *
cd ../../
l s-lrt
cd ..
l s-rlt
ls -rlt
set -o vi
ansible-playbook smoke-test.yml
ls -rlt
rm smoke-test.retry
git add .
git add --all
git commit -m "playbook update"
git push
ls -rlt
cd roles/tasks/
vi main*
ls
cd roles
ls
cd smoke
ls
cd tasks
ls
vi main.yml
cd ../../
ls -rlt
cd ..
l s-rlt
ls -rlt
ansible-playbook smoke-test.yml
ls -lrt
cd roles
ls -rlt
cd smoke
ls
cd tasks
ls -rlt
vi main.yml
cd ../../
ls
cd ..
ls -rlt
ansible-playbook smoke-test.yml
ls -=rlt
ls -rlt
cd roles
l s-lrt
ls -rlt
cd smoke
ls -rlt
cd tasks
ls -rlt
vi main.yml
cd ../../
l s-rlt
cd ..
l s-rlt
ls -rlt
ansible-playbook smoke-test.yml
cd roles/smoke/tasks
vi main*
cd -
ansible-playbook smoke-test.yml
vi main*
cd -
vi main*
cd -
ansible-playbook smoke-test.yml
cd -
vi main*
cd -
ansible-playbook smoke-test.yml
cd -
ls -rlt
cat main.yml
cd -
ansible-playbook smoke-test.yml
ls -lrt
cd roles
ls -rlt
cd smoke
l s-rlt
ls -rlt
cd *
ls -rlt
vi main*
cd -
ls -rlt
cd ..
l s-lrt
cd ..
l s-rlt
ls -rlt
ansible-playbook smoke-test.yml
ansible-playbook -vvv smoke-test.yml
ls -rlt
cd roles
ls -rlt
cd smoke
ls -lrt
ls -rlt
cd tasks
ls -rlt
vi main.yml
cd -
cd ..
l s-rlt
cd ..
l s-rlt
ls -rlt
ansible-playbook -vvv smoke-test.yml
ls -lrt
cat smoke-test.yml
cd roles
ls -lrt
cd smoke
cd tasks
ls -lt
vi main.yml
cd ../../../
ls
/test
set -o vi
ls -lrt
ansible-playbook smoke-test.yml
ls -lrt
rm smoke-test.retry
vi smoke-test.yml
cd roles
l s-lt
ls -lrt
cd smoke
ls -rlt
cd tasks
ls -lrt
vi main.yml
cd ../../
ls -lrt
cd ..
ls -lrt
ansible-playbook smoke-test.yml
set -o vi
ls -rlt
pwd
ls -lrt .ssh
ssh -i .ssh/openstack.pem cloud-user@10.10.10.11
ansible-playbook smoke-test.yml
ls -rlt
ansible-playbook site.yml
ls -lrt
rm smoke-test.retry
ansible-playbook smoke-test.yml
ls -lrt
cd roles
l s-lrt
ls -lrt
cd smoke
ls -rlt
cd tasks
ls -rlt
vi main.yml
cd ../..
ls -lrt
cd ..
l s-rlt
ls -lrt
vi smoke-test.yml
ansible-playbook smoke-test.yml
vi smoke-test.yml
ls -lrt
cd roles
l s-rlt
ls -rlt
cd smoke
ls -rlt
cd tasks
ls -rlt
vi main*
cd ../../
ls -lrt
cd ..
l s-lrt
ls -lrt
ansible-playbook smoke-test.yml
tags:
ansible-playbook smoke-test.yml
ls -lrt
ansible-playbook smoke-test.yml
ls -lrt
cd roles
ls -rlt
cd smoke
ls -rlt
cd *
ls -rlt
vi *
cd ../../
ls-rlt
cd ..
ls -rlt
ansible-playbook smoke-test.yml
ls -lrt
cd roles
ls -rlt
cd smoke
ls -rlt
cd task
cd tasks
ls -rlt
vi main*
cd ../../../
ansible-playbook smoke-test.yml
cd -
vi main*
cd ../../../
ansible-playbook smoke-test.yml
cd -
vi main*
cd -
ansible-playbook smoke-test.yml
ls -lrt
more smoke-test.yml
cd -
ls -lrt
vi main*
cd -
ansible-playbook smoke-test.yml
cd -
ls -lrt
vi main.yml
cd -
ansible-playbook smoke-test.yml
cd -
vi main.yml
cd -
ansible-playbook smoke-test.yml
vi main.yml
cd -
vi main.yml
cd -
ansible-playbook smoke-test.yml
ls -lrt
cd roles
ls -rlt
cp -R smoke smoke-test
cd smoke-test
ls -rlt
cd *
l s-rlt
ls -rlt
vi main.yml
cd ../../../
ls -rlt
vi smoke-test.yml
ansible-playbook smoke-test.yml
cd -
ls -rlt
vi main.yml
cd -
ansible-playbook smoke-test.yml
cd -
vi main.yml
cd -
ansible-playbook smoke-test.yml
cd -
vi main.yml
cd -
ansible-playbook smoke-test.yml
cd -
vi main.yml
cd -
ansible-playbook smoke-test.yml
ls -lrt
rm smoke-test.retry
cd roles
ls -rlt
rm -r smoke-test
cd ..
l s-rlt
ls -rlt
vi smoke-test.yml
ansible-playbook smoke-test.yml
ls -lrt
set -o vi
history |grep git
git add .
git commit -m "update playbook"
git push
ls -rlt
cd roles
ls -rlt
cd ..
l s-lrt
ls -rlt
cd role
cd roles
l s-rlt
ls -rlt
mkdir osp-del-instances
cd osp-del-instances
ls -rlt
mkdir -p defaults handlers meta tasks tests vars
ls -rlt
cd ../osp-flavor
ls
cp README.md ../osp-del-instances/
cd ../osp-del-instances/
cd tasks
ls -rlt
vi main.yml
ls -rlt
cd ..
l s-rlt
ls -rlt
more start-site.yml
ls -rlt
more site.yml
ls -lrt
mv site.yml 3-tier.yml
mv start-site.yml osp.yml
ls -lrt
rm -r ansible-assignments
rm -rf ansible-assignments
rm -rf good_example
rm -rf ansible-assignment
lls -rlt
ls -rlt
sudo -i
ls -rlt
set -o vi
git add .
git add --all
git add .
git commit -m "update playbook"
git push
ls -rlt
cat osp_flavor.yml
cd roles
ls 
ls -rlt
cd ..
ls -lrt
vi osp-del-instance.yml
cd roles
ls -rlt
cd osp-del-instances
ls -rlt
cd vars
l s-rlt
vi app1.yaml
vi app2.yaml
vi db.yaml
vi frontend.yaml
ls -rlt
vi main.yml
cd ../../
ls -rlt
cd ..
l s-rlt
ls -rlt
ansible-playbook osp-del-instance.yml
vi osp-del-instance.yml
ansible-playbook osp-del-instance.yml
vi /home/john.iles-spark.co.nz/roles/osp-del-instances/tasks/main.yml
ansible-playbook osp-del-instance.yml
ls -rlt
cat osp_jumpbox_inventory
uname -a
sudo su -
sudo -i
ansible all --list-hosts
ssh cloud-user@workstation-5f1e.rhpds.opentlc.com --private-key=~/.ssh/openstack.pem
 ssh cloud-user@workstation-5f1e.rhpds.opentlc.com -i ~/.ssh/openstack.pem
ssh workstation-5f1e.rhpds.opentlc.com
ansible all -m ping
ls -rlt
uname -a
ls -rlt
more Provision_OPS.yml
ls -rlt
vi Configure_3TA_OSP.yml
set -o vi
git add .
git commit -m "update playbook"
git push
