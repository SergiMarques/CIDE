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