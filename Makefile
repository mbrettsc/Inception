all:
	mkdir -p /home/data /home/data/mysql /home/data/wordpress
	docker-compose -f ./srcs/docker-compose.yml up --build -d
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker system prune -a
	docker volume rm $$(docker volume ls -q)
	rm -rf /home/data
re: down clean all