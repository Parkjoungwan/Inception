BLACK		:= $(shell tput -Txterm setaf 0)
RED		:= $(shell tput -Txterm setaf 1)
GREEN		:= $(shell tput -Txterm setaf 2)
YELLOW		:= $(shell tput -Txterm setaf 3)
LIGHTPURPLE	:= $(shell tput -Txterm setaf 4)
PURPLE		:= $(shell tput -Txterm setaf 5)
BLUE		:= $(shell tput -Txterm setaf 6)
WHITE		:= $(shell tput -Txterm setaf 7)
RESET		:= $(shell tput -Txterm sgr0)

compose = srcs/docker-compose.yaml

all: up

up:
	@echo "$(GREEN)Buiilding containers ...$(RESET)"
	@mkdir /Users/parkjoungwan/DirForClone/data
	@docker-compose -f $(compose) up --build -d

down:
	@echo "$(RED)Cleaning containers ... $(RESET)"
	@docker-compose -f $(compose) down --v --rmi all
	@rm -rf /Users/parkjoungwan/DirForClone/data
	@echo "$(RED)DONE!$(RESET)"

re: down up
