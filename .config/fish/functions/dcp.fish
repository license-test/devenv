# Defined in - @ line 0
function dcp --description 'alias dcp=docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-prod.yml'
	docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-prod.yml $argv;
end
