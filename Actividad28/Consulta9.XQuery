<libros>
{
  for $book in bookstore/book
  return <titulo>{data($book/title)}</titulo>
}
<total>{count(bookstore/book)}</total>
</libros>