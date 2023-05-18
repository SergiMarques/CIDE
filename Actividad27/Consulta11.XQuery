<html>
<head>
  <title>Listado de libros</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      text-align: left;
      padding: 8px;
      border: 1px solid black;
    }
    th {
      font-weight: bold;
    }
    td:nth-child(3) {
      text-align: right;
    }
  </style>
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
      for $libro in //libro
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