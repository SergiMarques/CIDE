for $book in bookstore/book
where $book/price <= 30
return data($book/title)
