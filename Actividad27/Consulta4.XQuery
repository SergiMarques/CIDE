for $libro in doc("biblioteca.xml")/bib/libro[@anyo < 2000]
return $libro