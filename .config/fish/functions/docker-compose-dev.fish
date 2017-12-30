# Defined in - @ line 0
function docker-compose-dev --description 'alias docker-compose-dev=docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-dev.yml'
	docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-dev.yml $argv;
end
