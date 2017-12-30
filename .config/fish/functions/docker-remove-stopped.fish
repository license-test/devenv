# Defined in - @ line 0
function docker-remove-stopped --description 'alias docker-remove-stopped=docker ps -aq --no-trunc | xargs docker rm'
	docker ps -aq --no-trunc | xargs docker rm $argv;
end
