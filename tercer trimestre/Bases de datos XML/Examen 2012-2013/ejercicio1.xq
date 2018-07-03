for $b in doc("nobel22")//premios_nobel/premios/premio
where premiado='Marie Curie'
return (data($b/premio) and data($b/@categoria))