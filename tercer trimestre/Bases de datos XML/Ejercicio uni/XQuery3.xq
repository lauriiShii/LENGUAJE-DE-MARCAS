<alumnos>{
for $d in doc("universidad2")//alumno
let $c:=$d//asignatura/@codigo
let $t:=doc("universidad2")//asignatura[@id=$c]/creditos_teoricos
let $p:=doc("universidad2")//asignatura[@id=$c]/creditos_practicos
return <alumno nombre="{data($d/nombre)}" credp="{sum($p)}" credt="{sum($t)}"/>
}</alumnos>