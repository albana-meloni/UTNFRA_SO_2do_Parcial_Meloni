   75  sudo usermod -aG docker vagrant
   80  sudo systemctl restart docker
   81  docker pull nginx
   84  sudo lvextend -L +500M /dev/mapper/vg_datos-lv_docker 
   85  sudo resize2fs /dev/mapper/vg_datos-lv_docker
   87  docker pull nginx
   91  vim index.html 
   92  docker run -d -p 8080:80 -v "$PWD"/index.html:/usr/share/nginx/html/index.html nginx
   94  vim dockerfile
   95  docker build -t web1-meloni .
   97  docker image ls
   98  docker login
   99  docker push web1-meloni
  100  docker push albilabi/web1-meloni
  101  docker tag web1-meloni albilabi/web1-meloni:v1.0
  102  docker push albilabi/web1-meloni:v1.0
