#!/bin/zsh
# celeb-fit.html(claude.ai 게시용)을 GitHub Pages용 index.html로 감싸 줍니다.
# celeb-fit.html을 고친 뒤 이 스크립트를 한 번 실행하고 커밋하세요.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="ko">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px/1.5 system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat celeb-fit.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html 생성 완료"
