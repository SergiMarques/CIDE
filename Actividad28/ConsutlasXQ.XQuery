<!--Mostrar los títulos de los libros con la etiqueta <titulo>: 1-->
for $book in //book
return <titulo>{data($book/title)}</titulo>

<!--Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la cláusula “where”:2-->
for $book in //book
where $book/price <= 30
return $book

<!--Mostrar los libros que tengan un precio igual o inferior a 30 incluyendo la condición en la ruta de XPath:3-->
//book[price <= 30]

<!--Mostrar solo el título (sin etiquetas), sin atributos, de los libros que tengan precio menor o igual a 30.4-->
for $book in //book[price <= 30]
return data($book/title)

<!--Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>.5-->
<lib2005>
{
  for $book in bookstore/book[year = 2005]
  return
    <libro>
      <titulo>{data($book/title)}</titulo>
      <autor>{data($book/author)}</autor>
    </libro>
}
</lib2005>
<!--Mostrar los años de publicación usando una cláusula FLWOR, pero usando "let" para almacenar los resultados intermedios. Etiquetar la salida con <publicación>.6-->
<publicaciones>
{
  for $libro in bookstore/book
  let $año := $libro/year
  return <publicacion>{$año}</publicacion>
}
</publicaciones>
<!--Mostrar los libros ordenados primero por "category" y después por "title" en una única consulta.7-->
<bookstore>
{
  for $book in //book
  order by $book/@category, $book/title
  return $book
}
</bookstore>
<!--Mostrar cuántos libros hay, y etiquetarlo con <total>. 8-->
<total>{count(//book)}</total>

<!--Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. 9-->
<libros>
{
  for $book in bookstore/book
  return <titulo>{data($book/title)}</titulo>
}
<total>{count(bookstore/book)}</total>
</libros>
<!--Mostrar el precio mínimo y máximo de los libros. 10-->
let $books := doc("bookstore.xml")/bookstore/book
return
<precios>
<precio-minimo>{min($books/price)}</precio-minimo>
<precio-maximo>{max($books/price)}</precio-maximo>
</precios>

<!--Mostrar el título del libro, su precio y precio con IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA.11-->
<books>
{
  for $book in bookstore/book
  let $price_with_iva := $book/price * 1.21
  order by $price_with_iva ascending
  return
    <book>
      <title>{data($book/title)}</title>
      <price>{data($book/price)}</price>
      <price_with_iva>{number($price_with_iva)}</price_with_iva>
    </book>
}
</books>



