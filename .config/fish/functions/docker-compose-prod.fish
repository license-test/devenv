# Defined in - @ line 0
function docker-compose-prod --description 'alias docker-compose-prod=docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-prod.yml'
	docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-prod.yml $argv;
end
