for $apellido in distinct-values(//apellido)
order by $apellido
return $apellido
