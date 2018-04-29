# Defined in - @ line 0
function dcds --description 'alias dcds=docker-compose -f {$HOME}/Projects/stem/data-science/compose/docker-compose-dev.yml'
	docker-compose -f {$HOME}/Projects/stem/data-science/compose/docker-compose-dev.yml $argv;
end
