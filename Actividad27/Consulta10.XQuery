for $libro in //libro
let $numAutores := count($libro/autor)
return <libro>
           <titulo>{ $libro/titulo/text() }</titulo>
           <numAutores>{ $numAutores }</numAutores>
       </libro>