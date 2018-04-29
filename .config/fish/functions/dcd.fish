# Defined in - @ line 0
function dcd --description 'alias dcd=docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-dev.yml'
	docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-dev.yml $argv;
end
