<lib2005>
{
  for $book in doc("libreria.xml")/bookstore/book[year=2005]
  return
    <libro>
      <titulo>{data($book/title)}</titulo>
      <autor>{data($book/author)}</autor>
    </libro>
}
</lib2005>