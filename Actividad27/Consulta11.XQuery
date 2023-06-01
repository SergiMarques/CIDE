<html>
<head>
  <title>Listado de libros</title>
  
</head>
<body>
  <h1>Listado de libros</h1>
  <table>
    <tr>
      <th>Título</th>
      <th>Editorial</th>
      <th>Precio</th>
    </tr>
    {
      for $libro in doc("biblioteca.xml")/bib/libro
      return
        <tr>
          <td>{data($libro/titulo)}</td>
          <td>{data($libro/editorial)}</td>
          <td>{data($libro/precio)}</td>
        </tr>
    }
  </table>
</body>
</html>