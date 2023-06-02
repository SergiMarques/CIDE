<books>
{
  for $book in doc("libreria.xml")/bookstore/book
  let $price_with_iva := $book/price * 1.21
  order by $price_with_iva ascending
  return
    <book>
      <title>{data($book/title)}</title>
      <price>{data($book/price)}</price>
      <price_with_iva>{number($price_with_iva)}</price_with_iva>
    </book>
}
</books>