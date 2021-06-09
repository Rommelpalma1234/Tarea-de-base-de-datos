
----------primer consulta-------------

SELECT 
('Dr. ' || '' ||  personal_doctores.nombre_d || ' ' || personal_doctores.apellido_d )  as Nombre_doctores,
personal_doctores.especialidad_d as Especialidad,
personal_doctores.pacientes_atendidos 
from personal_doctores


-----------segunda consulta ----------

select 
nombre_p as nombre,
apellido_p as apellidos_familiares,
count(apellido_p) over(partition by nombre_p order by apellido_p desc  ) Familiares
from pacientes_ancianos
where apellido_p like 'lucas palma' 
union all
select 
nombre_p ,
apellido_p ,
count(apellido_p) over(partition by nombre_p order by apellido_p desc  )
from pacientes_ancianos
where apellido_p like 'figueroa palma' 




---------------- tercer consulta ------------------

select 
'50 a 60'   || '' || '' as rando_de_edades,
Count(edad_p) as pesonas 
from pacientes_ancianos
where edad_p between  50 and 60  
union all
select 
'61 a 70'   || '' || '',
Count(edad_p) 
from pacientes_ancianos
where edad_p between  61 and 70 
union all
select 
'71 a 80'   || '' || '',
Count(edad_p) 
from pacientes_ancianos
where edad_p between  71 and 80 
union all
select 
'81 a 90'   || '' || '',
Count(edad_p)
from pacientes_ancianos
where edad_p between  81 and 90 

---------- 4 consulta ---------------------

select
   personal_dietas.id_pl_de_dietas,
  ('Dr.'|| ' ' ||personal_dietas.encargado_de_dieta) as Especialista,
   personal_dietas.nombre_dieta as Nombre_dieta,
   pacientes_ancianos.consultas_mecicas as consultas_realizadas,
   personal_dietas.costo_de_dieta

from personal_dietas 
   inner join pacientes_ancianos on pacientes_ancianos.id_pacientes = personal_dietas.id_pl_de_dietas

