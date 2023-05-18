for $libro in //libro[editorial="Addison-Wesley" and @anyo > 1992]
return concat($libro/@anyo, " -> ", $libro/titulo/text())