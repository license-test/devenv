# Defined in - @ line 0
function reset-time-machine-backup-speed --description 'Reset Time Machine backup speed'
  sudo sysctl debug.lowpri_throttle_enabled=1
end
