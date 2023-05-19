<bookstore>
{
  for $book in //book
  order by $book/@category, $book/title
  return $book
}
</bookstore>
