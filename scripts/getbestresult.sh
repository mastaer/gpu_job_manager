echo 'Filename Epoche  Batch  trerror  verror  teerror  lernrate min params' >> result.csv
for f in toCSV/*; do
    param1=`sed -n '3p' $f | awk {'printf ("%s", $2)'}`
    param2=`sed -n '4p' $f | awk {'printf ("%s", $2)'}`
    param3=`sed -n '5p' $f`
    param4=`sed -n '6p' $f`
    param5=`sed -n '7p' $f`
    param6=`sed -n '8p' $f | awk {'printf ("%s", $2)'}`
    param7=`sed -n '9p' $f | awk {'printf ("%s", $2)'}`
    param8=`sed -n '10p' $f | awk {'printf ("%s", $2)'}`

    bestvalues=`grep ! $f | tail -n 1 | awk {'printf ("%s\t%s\t%s\t%s\t%s\t%s\t%s", $2, $4, $6, $8, $10, $13, $15)'}`

    echo $f $bestvalues $param1 $param2 $param6 $param7 $param8 $param3 $param4 $param5 >> result.csv
done

