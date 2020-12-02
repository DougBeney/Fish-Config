# Defined in - @ line 1
function run-caddy --wraps='sudo PWD=(pwd) caddy run' --description 'alias run-caddy=sudo PWD=(pwd) caddy run'
  sudo PWD=(pwd) caddy run $argv;
end
