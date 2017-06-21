##### step1 : build docker image

`docker build -t static-webserver:v1`

##### step2 : launch built image
`docker run -d -p 80:80 static-webserver:v1`

##### step3 : open static website in your localhost
