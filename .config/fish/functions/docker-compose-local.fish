# Defined in - @ line 0
function docker-compose-local --description 'alias docker-compose-local=docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-local.yml'
	docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-local.yml $argv;
end
