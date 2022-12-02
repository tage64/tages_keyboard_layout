#!/usr/bin/sh
rm -r build/klc && \
  klfc --from-json tage.json tage_altgr.json --klc build/klc && \
  cd build/klc && \
  sd '\n' '\r\n' "$(ls)" && \
  iconv -f utf-8 -t cp1252 -c "$(ls)" -o cp_encoded.klc
