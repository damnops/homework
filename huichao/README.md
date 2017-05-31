Instructions

1.Clone the codebase to your local.

2.Build docker image:
  docker build -f Dockerfile -t centos:web1.0 ./

3.Startup container:
  docker run -d -v ./file:/web/htdocs -p 80:80 centos:web1.0
  
4.Check the url
Open the website in your brower: http://HOST_IP
