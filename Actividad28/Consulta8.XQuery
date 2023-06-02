for $book in doc("libreria.xml")/bookstore/book
return <total>{count($book)}</total>