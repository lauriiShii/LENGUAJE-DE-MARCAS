 <html>
<body>
<table>
<tr><td>nombre</td><td>asignatura</td></tr>
{for $a in doc("universidad2")//alumno[apellido1="Pérez"]
return 
<tr><td>{data($a/nombre)}</td>
<td>
{for $b in doc("universidad2")//asignatura
where $b/@id=$a//asignatura/@codigo
return <p>{data($b/nombre)}</p>}
</td></tr>}
</table>
</body>
</html>