# Defined in - @ line 0
function dfr --description 'alias dfr=docker-compose up -d --force-recreate'
	docker-compose up -d --force-recreate $argv;
end
