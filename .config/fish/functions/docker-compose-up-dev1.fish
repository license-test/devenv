# Defined in - @ line 0
function docker-compose-up-dev1 --description 'alias docker-compose-up-dev1=docker-compose up proxy  mysql backend_dev1 frontend_dev1 nginx_dev1'
  docker-compose -f {$HOME}/Projects/stem/web-app/docker-compose-dev.yml up proxy  mysql backend_dev1 frontend_dev1 nginx_dev1
end
