
for $book in doc("libreria.xml")/bookstore/book
let $numlibros :=count(bookstore/$book)
  return <todo>
  <titulo>{data($book/title)}</titulo> 
<total>{ $numlibros }</total>
</todo>

