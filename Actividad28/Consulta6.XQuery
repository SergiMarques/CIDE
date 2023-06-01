<publicaciones>
{
  for $libro in doc("libreria.xml")/bookstore/book
  let $año := $libro/year
  return <publicacion>{$año}</publicacion>
}
</publicaciones>