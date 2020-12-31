# SimpleShellScriptTools
Some Simple Shell Srcipts For Linux

## CPUTemperature.sh
Get Current CPU Temperature From `lm-sensors` 

### Requirements : 
`lm-sensors` [Thanks For](https://askubuntu.com/questions/15832/how-do-i-get-the-cpu-temperature)

## CPUUsage.sh
Get Current CPU Usage(Percentage with this format : "%4.1f%") From `top` 

## MemUsage.sh 
Get Current RAM Usage(GiB and Percentage with this format : "%3.1f GiB(%3.1f%)" from `free -m`

## KeyboardLockState.sh
Get Current Keyboard Lock (NumLock & CapsLock) State From `set`

You can change the display symbol of each state by changing `Caps_off`, `Caps_on`, `Num_off`, `Num_on` in this script

## DownloadUploadSpeed.sh
Get Total Download And Upload Speed(KiB/s or MiB/s with this format : "%6.2f ?iB/s") From `ifstat` 

You can change the download and upload symbol by changing `download_sym`, `upload_sym` in this script

### Requirements :
`ifstat` [Thanks For](https://unix.stackexchange.com/questions/517352/get-current-download-speed-as-a-number)
