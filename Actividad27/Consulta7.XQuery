for $libro in //libro[not(autor)]
return concat($libro/@anyo, " -> ", $libro/titulo/text())