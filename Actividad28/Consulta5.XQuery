<lib2005>{
for $book in bookstore/book
where $book/year = 2005
return <titulo>{data($book/title)}</titulo>
       <autor>{data($book/author)}</autor>
}</lib2005>