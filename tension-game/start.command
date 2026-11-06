#!/bin/zsh
# 더블클릭하면 게임 서버를 켜고 브라우저에서 엽니다. 끝내려면 이 터미널 창을 닫으세요.
cd "$(dirname "$0")"
(sleep 1; open "http://localhost:8000") &
echo "Tension Play 실행 중: http://localhost:8000  (끝내려면 이 창을 닫으세요)"
exec python3 -m http.server 8000 --bind 127.0.0.1
