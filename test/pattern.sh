#!/bin/sh
pattern="$1"
shift
echo "Matching against '$pattern':"
for string
do
case $string in
$pattern) echo "$string: Match." ;;
*) echo "$string: No match." ;;
esac
done

# $ ./pattern.sh '*' 'hello'
# Matching against '*':
# hello: Match.
# $ ./pattern 'hello*' 'hello' 'hello, there' 'well, hello'
# Matching against 'hello*':
# hello: Match.
# hello, there: Match.
# well, hello: No match.


