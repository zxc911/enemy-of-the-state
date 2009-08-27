RESERVED="--reserved READONLY --reserved T_SHORT --reserved T_INT --reserved T_LONG --reserved T_FLOAT --reserved T_DOUBLE --reserved T_STRING --reserved T_OBJECT --reserved T_CHAR --reserved T_BYTE --reserved T_UBYTE --reserved T_USHORT --reserved T_UINT --reserved T_ULONG --reserved T_STRING_INPLACE --reserved T_BOOL --reserved T_OBJECT_EX --reserved T_LONGLONG --reserved T_ULONGLONG --reserved T_PYSSIZET --reserved READONLY --reserved RO --reserved READ_RESTRICTED --reserved PY_WRITE_RESTRICTED --reserved RESTRICTED"

PARAMS="--python htmlunit --jar htmlunit-2.5/lib/htmlunit-2.5.jar --jar htmlunit-2.5/lib/htmlunit-core-js-2.5.jar $(for f in htmlunit-2.5/lib/[cnsx]*.jar; do echo ' --include' $f; done) --exclude com.gargoylesoftware.htmlunit.html.HtmlTableCell --exclude net.sourceforge.htmlunit.corejs.javascript.ScriptRuntime --version 2.5.0 --package java.io --package java.net --classpath . HtmlPageWrapper HtmlElementWrapper"

python -m jcc.__main__ $PARAMS $RESERVED --build --files 1 && python -m jcc.__main__ $PARAMS $RESERVED --bdist
