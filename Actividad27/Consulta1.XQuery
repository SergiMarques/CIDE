for $x in doc("biblioteca.xml")/bib/libro
return data($x/titulo)