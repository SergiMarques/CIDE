let $books := doc("bookstore.xml")/bookstore/book
return
<precios>
<precio-minimo>{min($books/price)}</precio-minimo>
<precio-maximo>{max($books/price)}</precio-maximo>
</precios>