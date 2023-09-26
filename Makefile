up:
	docker-compose -f docker-compose.yml up -d -- build

up-auth:
	docker-compose -f docker-compose-auth.yml up -d --build

logs:
	docker-compose -f docker-compose.yml logs -f sai-storage-mongo

logs-auth:
	docker-compose -f docker-compose-auth.yml logs -f sai-storage-mongo

down:
	docker-compose -f docker-compose.yml down

down-auth:
	docker-compose -f docker-compose-auth.yml down
