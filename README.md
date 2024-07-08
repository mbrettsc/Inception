

# Inception
 ## Overview
  Inception is a system administration project aimed at broadening your knowledge of Docker and containerization. You will virtualize several Docker images and create a small infrastructure within a virtual machine. 
  ## Features
   - Virtualization of multiple Docker images 
   -  Setup of services including NGINX, WordPress, and MariaDB 
   -  Custom Dockerfiles for each service 
   -  Docker Compose configuration 
   -  TLSv1.2 or TLSv1.3 support for NGINX 
   -  Persistent storage with Docker volumes 
   -  Network configuration within Docker 
- ## Installation 
- 1. **Clone the repository**: ```git clone https://github.com/mbrettsc/inception.git && cd inception``` 
- 2. **Set up your environment variables**: Create a `.env` file in the `srcs` directory and configure your environment variables: 
		   - ```bash DOMAIN_NAME=yourlogin.42.fr```
		  -  ```CERTS_=./path_to_certs``` 
		  - ```MYSQL_ROOT_PASSWORD=your_root_password```
		  - ```MYSQL_USER=your_mysql_user``` 
		 - ```MYSQL_PASSWORD=your_mysql_password``` 
- 3. **Build and run the project**: ```make ``` 
