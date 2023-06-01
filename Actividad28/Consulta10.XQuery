for $book in doc("libreria.xml")/bookstore
return
<precios>
<precio-minimo>{min($book/price)}</precio-minimo>
<precio-maximo>{max($book/price)}</precio-maximo>
</precios>