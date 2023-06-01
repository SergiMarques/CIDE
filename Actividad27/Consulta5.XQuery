for $libro in doc("biblioteca.xml")/bib/libro[editorial="Addison-Wesley" and @anyo > 1992]
return concat($libro/@anyo, " -> ", $libro/titulo/text())