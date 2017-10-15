setup:
	@mkdir -p contrib/esdata
	@chown -R 1000:1000 contrib/esdata
	@cd contrib; docker-compose up

start:
	@cd contrib; docker-compose start

stop:
	@cd contrib; docker-compose stop

destroy:
	@echo "Stopping containers..."
	@docker stop elasticsearch kibana logstash filebeat
	@echo "Removing containers..."
	@docker rm elasticsearch kibana logstash filebeat
	@rm -rf contrib/esdata

