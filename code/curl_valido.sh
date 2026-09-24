set -euo pipefail

SID="${SID:-1c032b2b7f1885c25e5977d494ab8362}"
BASE="http://localhost:4280/vulnerabilities/brute/"
USER="pablo"
PASS="letmein"

curl -s -b "PHPSESSID=$SID; security=low" \
  "${BASE}?username=${USER}&password=${PASS}&Login=Login" \
  -o valido.html -D head_valido.txt \
  -w 'VALIDO   -> HTTP %{http_code} | %{size_download} bytes | %{time_total}s\n'
