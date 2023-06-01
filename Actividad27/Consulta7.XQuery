for $libro in doc("biblioteca.xml")/bib/libro[not(autor)]
return concat($libro/@anyo, " -> ", $libro/titulo/text())