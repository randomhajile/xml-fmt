hash xmllint 2>/dev/null || { echo >&2 "This program requires xmllint."; exit 1; }
tmpfile=$(mktemp /tmp/xml-fmt.XXXXXX)
xmllint --format $1 > $tmpfile
rc=$?
if [[ $rc != 0 ]]; then
    rm $tmpfile
    exit $rc;
fi
mv $tmpfile $1
