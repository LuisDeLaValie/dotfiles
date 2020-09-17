maximo=$(cat /sys/class/backlight/amdgpu_bl0/max_brightness)
actual=$(cat /sys/class/backlight/amdgpu_bl0/brightness)
let actual=$actual*100/$maximo
echo $actual

cambirbrillo(){
    echo $1
    case $1 in
        [0-9]*)
            if (($1>= 1 && $1<= 100)); then
                let total=$maximo*$1/100
                # echo "$total entra en un rango valido"
                echo $total > /sys/class/backlight/amdgpu_bl0/brightness
                #else
                # echo "fuera de rango"
            fi
        ;;
        *)
            # echo "Sorry, I don't understand"
        ;;
    esac
}
case $1 in
    -dec)
        let cam=$actual-$2
        cambirbrillo $cam
    ;;
    -inc)
        let cam=$actual+$2
        cambirbrillo $cam
    ;;
    *)
        #echo "Sorry, I don't understand"
    ;;
    
esac
