# Defined in - @ line 0
function dcl --description 'alias dcl=docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-local.yml'
	docker-compose -f ${HOME}/Projects/stem/web-app/docker-compose-local.yml $argv;
end
