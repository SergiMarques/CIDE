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
<publicaciones>
{
  for $libro in bookstore/book
  let $año := $libro/year
  return <publicación>{$año}</publicación>
}
</publicaciones>

<!--  Mostrar los libros ordenados primero por “category” y después por “title” en una única consulta. --> 
<bookstore>
{
for $book in //book
order by $book/@category, $book/title
return $book
}
</bookstore>

<!-- Mostrar cuántos libros hay, y etiquetarlo con <total>. -->
<total>{count(//book)}</total>


<!-- Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. -->

<libros>
{
  for $book in bookstore/book
  return <titulo>{data($book/title)}</titulo>
}
<total>{count(bookstore/book)}</total>
</libros>


<!-- Mostrar el precio mínimo y máximo de los libros. -->
let $books := doc("bookstore.xml")/bookstore/book
return 
    <precios>
        <precio-minimo>{min($books/price)}</precio-minimo>
        <precio-maximo>{max($books/price)}</precio-maximo>
    </precios>

<!-- Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.-->


<books>
{
  for $book in bookstore/book
  let $price := $book/price * 1.21
  order by $price ascending
  return
    <book>
      <title>{data($book/title)}</title>
      <price>{data($book/price)}</price>
      <price_with_iva>{number($price)}</price_with_iva>
    </book>
}
</books>




