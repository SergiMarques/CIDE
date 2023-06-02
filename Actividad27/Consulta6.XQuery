for $libro in doc("biblioteca.xml")/bib/libro[count(autor) > 1]
return concat($libro/@anyo, " -> ", $libro/titulo/text())