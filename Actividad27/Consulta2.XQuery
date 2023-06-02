for $libro in doc("biblioteca.xml")/bib/libro
order by $libro/@anyo
return concat($libro/@anyo, " -> ", $libro/titulo/text())