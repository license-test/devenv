# Defined in - @ line 0
function drm --description 'alias drm=docker ps -aq --no-trunc | xargs docker rm'
	docker ps -aq --no-trunc | xargs docker rm $argv;
end
