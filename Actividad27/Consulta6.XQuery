for $libro in //libro[count(autor) > 1]
return concat($libro/@anyo, " -> ", $libro/titulo/text())