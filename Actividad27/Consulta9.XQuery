for $libro in //libro
let $autores := $libro/autor
return <result>
           <titulo>{ $libro/titulo/text() }</titulo>
           { for $autor in $autores
             return <autor>
                        <apellido>{ $autor/apellido/text() }</apellido>
                        <nombre>{ $autor/nombre/text() }</nombre>
                    </autor>
           }
       </result>