# Defined in - @ line 0
function s --description 'alias s=docker exec -it compose_web_1 /bin/bash'
	docker exec -it compose_web_1 /bin/bash $argv;
end
