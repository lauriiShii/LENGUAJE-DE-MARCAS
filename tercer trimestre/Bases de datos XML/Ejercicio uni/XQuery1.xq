
for $b in doc("universidad2")//alumno/estudios/proyecto
return (
  <alumno>
  <nombre>{data($b/../../nombre)}</nombre>
  <apellido1>{data($b/../../apellido1)}</apellido1>
  <apellido2>{data($b/../../apellido2)}</apellido2>
  <proyecto>{data($b)}</proyecto>
  </alumno>
  )
  