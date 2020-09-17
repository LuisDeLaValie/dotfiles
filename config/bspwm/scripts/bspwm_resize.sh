
if bspc query -N -n focused.floating > /dev/null; then
	step=20
else
	step=100
fi

case "$1" in
	west) dir=right; falldir=left; x="-$step"; y=0;;
	east) dir=right; falldir=left; x="$step"; y=0;;
	north) dir=top; falldir=bottom; x=0; y="-$step";;
	south) dir=top; falldir=bottom; x=0; y="$step";;
esac
echo "bspc node -z $dir $x $y || bspc node -z $falldir $x $y" 
bspc node -z "$dir" "$x" "$y" || bspc node -z "$falldir" "$x" "$y"