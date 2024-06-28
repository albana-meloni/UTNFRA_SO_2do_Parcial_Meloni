ll
./carpeta_compartida/instalacion_inicial.sh 
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh 
source  ~/.bashrc  && history -a
ll
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvs
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo pvs
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo vgs
sudo lvcreate -L +5M vg_datos -n lv_docker
sudo lvcreate -L +1.5G vg_datos -n lv_workareas
sudo lvs
sudo lvcreate -L +512M vg_temp -n lv_swap
sudo lvs
sudo mkdir /work
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker 
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas 
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
swapon
sudo mkswap /dev/mapper/vg_temp-lv_swap 
sudo swapon /dev/mapper/vg_temp-lv_swap
swapon
df -h
sudo systemctl status docker
history
history | grep -E 'sudo|swapon' | grep -vE 'systemctl|history'
history | grep -E 'sudo|swapon' | grep -vE 'systemctl|history' > RTA_Examen_20240627/Punto_A.sh
ll /usr/local/bin/
cat UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
vim /usr/local/bin/MeloniAltaUser-Groups.sh
ll
ll /usr/local/bin/
touch /usr/local/bin/MeloniAltaUser-Groups.sh
sudo touch /usr/local/bin/MeloniAltaUser-Groups.sh
ll /usr/local/bin/
sudo chmod +x /usr/local/bin/MeloniAltaUser-Groups.sh
sudo vim /usr/local/bin/MeloniAltaUser-Groups.sh
./usr/local/bin/MeloniAltaUser-Groups.sh
. /usr/local/bin/MeloniAltaUser-Groups.sh vagrant UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ll /work/2P_202406_Prog1
ll -d /work/2P_202406_Prog1
ll /home/
man userdel
sudo userdel 2P_202406_Prog1
sudo userdel 2P_202406_Prog2
sudo userdel 2P_202406_Test1
sudo userdel 2P_202406_Supervisor
man groupdel 
sudo groupdel 2P_GDesa
sudo groupdel 2P_GTest
sudo groupdel 2PSupervisores
tree /work/
ll /work/
sudo rm /work/2P_202406_Prog1
sudo rm -r /work/2P_202406_Prog1
ll /work/
sudo rm -r /work/2P_202406_Prog2
sudo rm -r /work/2P_202406_Supervisor
sudo rm -r /work/2P_202406_Test1
ll /work/
sudo vim /usr/local/bin/MeloniAltaUser-Groups.sh 
. /usr/local/bin/MeloniAltaUser-Groups.sh vagrant UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt 
history
history | grep -E '68|69' | grep -v 'history'
history | grep -E '68|69' | grep -v 'history' > RTA_Examen_20240627/Punto_B.sh
cd UTN-FRA_SO_Examenes/202406/docker/
id
sudo usermod -aG docker vagrant
id
cd UTN-FRA_SO_Examenes/202406/docker/
docker
docker pull nginx
sudo systemctl restart docker
docker pull nginx
sudo lvs
sudo pvs
sudo lvextend -L +500M /dev/mapper/vg_datos-lv_docker 
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo lvs
docker pull nginx
docker ps
ll
cat index.html 
vim index.html 
docker run -d -p 8080:80 -v "$PWD"/index.html:/usr/share/nginx/html/index.html nginx
docker ps
vim dockerfile
docker build -t web1-meloni .
vim dockerfile 
docker image ls
docker login
docker push web1-meloni
docker push albilabi/web1-meloni
docker tag web1-meloni albilabi/web1-meloni:v1.0
docker push albilabi/web1-meloni:v1.0
history
cd
history | grep -E '75|80|81|84|85|87|91|92|94|95|97|98|99|100|101|102' | grep -v 'history'
history | grep -E '75|80|81|84|85|87|91|92|94|95|97|98|99|100|101|102' | grep -v 'history' > RTA_Examen_20240627/Punto_C.sh
cd UTN-FRA_SO_Examenes/202406/ansible/
ll
ll roles/
cat roles/2do_parcial/tasks/main.yml 
vim roles/2do_parcial/tasks/main.yml 
ll
cd roles/
ll
cd 2do_parcial/
ll
mkdir templates
vim templates/template_alumno.j2
vim templates/template_equipo.j2
ll
ll templates/
sudo vim /usr/local/bin/MeloniAltaUser-Groups.sh
vim tasks/main.yml 
vim ansible.cfg
ll
ll tests/
cat tests/test.yml 
cat templates/template_equipo.j2 
cd tests/
ansible-playbook -i inventory test.yml 
cd ..
ansible-playbook -i tests/inventory tests/test.yml 
rm ansible.cfg 
ansible-playbook -i tests/inventory tests/test.yml 
vim ansible.cfg
ansible-playbook -i tests/inventory tests/test.yml 
ansible-playbook -i tests/inventory tests/test.yml -k
ssh localhost
grep -i aut /etc/ssh/sshd_config
cd UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/
sudo vim /etc/ssh/sshd_config
ssh localhost
ansible-playbook -i tests/inventory tests/test.yml -k
sudo vim /etc/ssh/sshd_config
sudo systemctl status sshd
sudo systemctl enable --now sshd
cd
sudo visudo 
history
history | grep -E '111|113|115|117|118|119|124|148' | grep -v 'history'
history | grep -E '111|113|115|117|118|119|124|148' | grep -v 'history' > RTA_Examen_20240627/Punto_D.sh
mkdir repositorio
cd repositorio/
git init
git branch -m main
cd
cp UTN-FRA_SO_Examenes/202406/ repositorio/
ll repositorio/
cp -r UTN-FRA_SO_Examenes/202406/ repositorio/
ll repositorio/
ll repositorio/202406/
cp -r RTA_Examen_20240627 repositorio/
ll repositorio/
