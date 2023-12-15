all:
	mkdir -p /home/mbrettsc/data /home/mbrettsc/data/mysql /home/mbrettsc/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker system prune -a
	docker volume rm $$(docker volume ls -q)
	rm -rf /home/mbrettsc/data
re: down clean all