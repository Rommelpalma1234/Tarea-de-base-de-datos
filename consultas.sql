12:50 AM 6/11/2021


----------primer consulta-------------

/*Consultar el nombre de médicos y su especialidad, numero de pacientes ancianos atendidos por cada uno según su especialidad */

select 
('Dr. ' || '' || personal_medico.doctor_medicina_general || '' || personal_medico.apellido_d) as nombre_doctores,
personal_medico.especialidad_d as especialidad,
pacientes_ancianos.consultas_mecicas
from personal_medico
inner join  pacientes_ancianos on pacientes_ancianos.id_pacientes = personal_medico.id_personal_medico


-----------segunda consulta ----------


/*Consultar si existe algún lazo de familiaridad dentro del asilo con algotras persona, es decir sean familia si es así mostrar sus otros familiares por cada uno que tenga un familiar con los mismos apellidos*/

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


/* Mostrar por medio de rango de edades la cantidad de ancianos que hay en el asilo (50 a 60) (61 a 70) (71 a 80) (81 a 90) y mostrar cuantos hay dependiendo del rango de edades*/

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

/* Establecer la cantidad de tratamientos que ha realizado los profesionales de dietas, se desea detallar que tipo de dieta se ha aplicado a los ancianos y cuantas veces se ha realizado la dieta a los ancianos. (dieta1=4, dieta2=6, dieta3=7)*/


select
  ('Dr.'|| ' ' ||personal_medico.doctor_dieta) as Especialista,
   personal_medico.nombre_dieta as Nombre_dieta,
   pacientes_ancianos.consultas_mecicas as consultas_realizadas,
   personal_medico.costo_dieta

from personal_medico
   inner join pacientes_ancianos on pacientes_ancianos.id_pacientes = personal_medico.id_personal_medico


