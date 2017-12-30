# Defined in - @ line 0
function ss --description 'alias ss=ssh -p 2022 ${USER}@localhost'
	ssh -p 2022 ${USER}@localhost $argv;
end
