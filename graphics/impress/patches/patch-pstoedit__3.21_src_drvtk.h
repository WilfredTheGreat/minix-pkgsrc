$NetBSD$

--- pstoedit_3.21/src/drvtk.h.orig	2000-10-03 20:00:50.000000000 +0000
+++ pstoedit_3.21/src/drvtk.h
@@ -48,6 +48,8 @@ private:
 	void			outputEscapedText(const char* string);
 #include "drvfuncs.h"
 
+	virtual void    show_image(const Image & imageinfo); 
+	int	      imgcount;
 };
 #endif
  
