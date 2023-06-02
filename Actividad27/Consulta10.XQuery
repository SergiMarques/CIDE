for $libro in doc("biblioteca.xml")/bib/libro
let $numAutores := count($libro/autor)
return <libro>
           <titulo>{ $libro/titulo/text() }</titulo>
           <numAutores>{ $numAutores }</numAutores>
       </libro>