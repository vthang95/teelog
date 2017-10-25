up:
	docker-compose up -d
stop:
	docker-compose stop
	docker rm -f $(docker ps -a | grep teelog_app | awk '{print $1}') || echo "\n\n >bash stoped before\n\n"
app:
	docker rm -f teelog_app; docker-compose run --name teelog_app --rm -p 6600:4000 phoenix iex -S mix phx.server
bash:
	docker-compose run phoenix bash
