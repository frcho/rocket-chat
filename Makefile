help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make start         - start containers"
	@echo "   2. make stop          - stop containers"
	@echo "   3. make down          - down containers"
	@echo "   4. make logs          - view logs"


start:
	@echo "Starting Rocket Chat containers..."
	@docker-compose up -d --build >/dev/null
	@echo "Please be patient. This could take a while..."
	@echo "Rocket Chat will be available at http://localhost:3000"
	@echo "Type 'make logs' for the logs"	

stop:
	@echo "Stopping Rocket Chat containers..."
	@docker-compose stop >/dev/null

down:
	@echo "Down Rocket Chat containers..."
	@docker-compose down >/dev/null

logs:
	@docker-compose logs -f --tail="20" rocketchat
