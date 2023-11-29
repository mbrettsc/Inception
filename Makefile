all:
	docker compose -f ./srcs/docker-compose.yml up --build -d
down:
	docker compose -f ./srcs/docker-compose.yml down
clean:
	docker rmi -f $$(docker images -qa)
re: down clean all