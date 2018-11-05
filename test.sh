RES=0

echo $1


if readelf -s "$1" 2>/dev/null | grep -q '__stack_chk_fail'; then
    echo "Has stack check"
else
    RES=$((RES + 1))
    echo 'No stack check'
fi
#echo $RES

if readelf --symbols "$1" 2>/dev/null | grep -q '.symtab'; then
    echo "Has symtab"
    RES=$((RES + 1))
else
    echo "No symtab"
fi

#echo $RES

exit $RES
