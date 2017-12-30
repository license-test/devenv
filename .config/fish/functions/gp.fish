# Defined in - @ line 0
function gp --description 'alias gp=env GIT_SSL_NO_VERIFY=true git push'
	env GIT_SSL_NO_VERIFY=true git push $argv;
end
