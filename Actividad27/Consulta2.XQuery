for $libro in //libro
order by $libro/@anyo
return concat($libro/@anyo, " -> ", $libro/titulo/text())