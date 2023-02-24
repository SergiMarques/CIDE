<!--Mostrar los títulos de los libros con la etiqueta <titulo>: --> 
for $book in //book
return $book/title/text()


<!--Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where”:-->
for $book in //book
where $book/price <= 30
return $book



<!--Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la ruta de XPath:-->
//book[price <= 30]



<!-- Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.-->

for $book in bookstore/book
where $book/price <= 30
return data($book/title)



<!-- Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.-->
<lib2005>{
for $book in bookstore/book
where $book/year = 2005
return <titulo>{data($book/title)}</titulo>
       <autor>{data($book/author)}</autor>
}</lib2005>


<!-- Mostrar los años de publicación usando una clausula FLWOR, pero usando “let” para almacenar los resultados intermedios. Etiquetar la salida con <publicación>.-->
<publicacion>{
for $year in distinct-values(bookstore/book/year)
let $count := count(bookstore/book[year = $year])
return <año cantidad="{$count}">{$year}</año>
}</publicacion>










