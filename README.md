# SimpleShellScriptTools
Some Simple Shell Srcipts For Linux

---

## CPUTemperature.sh
Get Current CPU Temperature From `lm-sensors` 

### Requirements : 
`apt-get install lm-sensors`

---

## CPUUsage.sh
Get Current CPU Usage(Percentage with this format : "%4.1f %") From `sar` 

### Requirements : 
`apt-get install sysstat`

---

## MemUsage.sh 
Get Current RAM Usage(GiB and Percentage with this format : "%3.1f GiB(%3.1f %)" from `top -n 1`

---

## KeyboardLockState.sh
Get Current Keyboard Lock (NumLock & CapsLock) State From `set`

You can change the display symbol of each state by changing `Caps_off`, `Caps_on`, `Num_off`, `Num_on` in this script

---

## DownloadUploadSpeed.sh
Get Total Download And Upload Speed(KiB/s or MiB/s with this format : "%6.2f ?iB/s") From `ifstat` 

You can change the download and upload symbol by changing `download_sym`, `upload_sym` in this script

### Requirements :
`apt-get install ifstat `
