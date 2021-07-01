-------- insercion de datos 4:30 PM 7/1/2021--------------


--------tabla familiar_cercano

insert into familiar_cercano(id_familia, apellido_f, direccion_f, celular_f, familiar_descripcion, celular2_f)
values(1,'palma plua', 'la bramadora', 0967760813,'primo', 0976674532);



--------tabla pagos

insert into pagos(id_pagos, precio_pagos, fecha_pago, pago_por_tarjetas, pago_dinero_fisico)
values(1,1000,'06/06/2021', 'tarjeta de credito','ninguno');


--------tabla pacientes_pagos

insert into pacientes_pagos(pagos_id, nombre_persona, cedula)
values(1,'jose lucas',2300535214);
insert into pacientes_pagos(pagos_id, nombre_persona, cedula)
values(2,'pedro lopez',2300535215);
insert into pacientes_pagos(pagos_id, nombre_persona, cedula)
values(3,'mateo reyes',300535216);
insert into pacientes_pagos(pagos_id, nombre_persona, cedula)
values(4,'maria muños',2300535217);
insert into pacientes_pagos(pagos_id, nombre_persona, cedula)
values(5,'felipe ortiz',2300535218);




--------tabla pacientes_ancianos   (falta7:22 PM 6/28/2021)

insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p,
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(1,2300535214,'jose jose','lucas palma', '52','mestizo', 'masculino', '1.70', 'no' , '12/11/2020', 'buen estado', 'yes');
insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p, 
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(2,2300535215,'pedro jose','lopez palma', '53','mestizo', 'masculino', '1.70', 'no' , '12/11/2020', 'buen estado', 'yes');
insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p, 
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(3,2300535216,'mateo marcos','lucas reyes', '65','mestizo', 'masculino', '1.70',  'yes' , '12/11/2020', 'buen estado', 'yes');
insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p, 
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(4,2300535217,'maria jose','lucas palma', '67','mestizo', 'femenino', '1.50',  'no' , '12/11/2020', 'buen estado', 'yes');
insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p, 
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(5,2300535218,'felipe lapaz ','figueroa palma', '73','mestizo', 'masculino', '1.70',  'no' , '12/11/2020', 'buen estado', 'yes');
insert into pacientes_ancianos(id_pacientes, cedula_p, nombre_p,apellido_p, edad_p, color_p, sexo_p, altura_p, 
							  anciano_sin_hogar, fecha_de_entrada, condiciones_salud, llenado_de_fichas )
values(6,2300535219,'rommel santiago','figueroa palma', '80','mestizo', 'masculino', '1.70',  'no' , '12/11/2020', 'buen estado', 'yes');








-------- consultas_medicas

insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(1,12,current_date,'Elliam perez','Cardiologia' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(2,3,current_date,'Elliam perez','Cardiologia' );

insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(3,2,current_date,'Maria cedeño','Pulmonia' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(4,6,current_date,'Maria cedeño','Pulmonia' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(5,1,current_date,'Mario lopez','medicina general' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(6,1,current_date,'Mario lopez','medicina general' );

insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(7,1,current_date,'Juan pilligua','urologia' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(8,1,current_date,'Juan pilligua','urologia' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(11,1,current_date,'jaime cedeño','Oftalmología' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(12,1,current_date,'jaime cedeño','Oftalmología' );


insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(9,1,current_date,'remberto marcillo','Oftalmología' );
insert into consultas_medicas(consultas_id, consultas_realizadas, fecha_de_consulta, medico_encargado, consulta_descripcion)
values(10,1,current_date,'remberto marcillo','Oftalmología' );




--------tabla actividad_paciente

insert into actividad_paciente(id_especialista, cedula_especialesta, especialiadad,nombre_especialista, pago_a_especialista,
								 hora_inicio_actividad, hora_fin_actividad,tipo_actividad_individual )
values(1,3485743260,'terapias', 'Reinaldo palacio',2000, '12:00pm', '2:00pm', 'charlas');
insert into actividad_paciente(id_especialista, cedula_especialesta, especialiadad,nombre_especialista, pago_a_especialista,
								 hora_inicio_actividad, hora_fin_actividad,tipo_actividad_individual )
values(2,3485743261,'cartas', 'Eugenio espejo',2000, '12:00pm', '3:00pm', 'juego de cartas');
insert into actividad_paciente(id_especialista, cedula_especialesta, especialiadad,nombre_especialista, pago_a_especialista,
								 hora_inicio_actividad, hora_fin_actividad,tipo_actividad_individual )
values(3,3485743262,'terapias', 'Jimmy acebo',2000, '11:00pm', '2:00pm', 'charlas');
insert into actividad_paciente(id_especialista, cedula_especialesta, especialiadad,nombre_especialista, pago_a_especialista,
								 hora_inicio_actividad, hora_fin_actividad,tipo_actividad_individual )
values(4,3485743263,'comidas', 'Jose perez',2000, '12:00pm', '4:00pm', 'charlas');
insert into actividad_paciente(id_especialista, cedula_especialesta, especialiadad,nombre_especialista, pago_a_especialista,
								 hora_inicio_actividad, hora_fin_actividad,tipo_actividad_individual )
values(5,3485743264,'terapias', 'eloisa palma',2000, '12:00pm', '2:00pm', 'charlas');





--------tabla personal_medico 


--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(1,'Elliam perez', 'Cardiologia', 'revision de pacientes', '8:00', '15:00', 1000);

--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(2,'Maria cedeño', 'Pulmonia', 'revision de pacientes', '8:00', '15:00', 1000);
--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(3,'Mario lopez', 'medicina general', 'revision de pacientes', '8:00', '15:00', 1000);

--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(4,'Juan pilligua', 'urologia', 'revision de pacientes', '8:00', '15:00', 1000);

--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(5,'jaime cedeño', 'Oftalmología', 'revision de pacientes', '8:00', '15:00', 1000);


--insert into personal_medico( id_personal_medico, personal_medicina_general, especialidad_doctor,medicina_descripcion, hora_entrada, hora_salida,
						   pago_medicos)
values(6,'remberto marcillo', 'Oftalmología', 'revision de pacientes', '8:00', '15:00', 1000);




--------tabla habitaciones 

insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(1,1,'mediana');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(2,2,'mediana');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(3,3,'mediana');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(4,4,'pequeña');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(5,5,'pequeña');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(6,6,'pequeña');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(7,7,'grande');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(8,8,'grande');
insert into habitaciones (id_habitacion, numero_habitacion, habitacion_descripcion)
values(9,9,'grande');




--------tabla asilo 

insert into asilo (id_asilo, nombre_asilo, ciudad_asilo, calle_asilo, telefono_asilo,fundacion_del_asilo	)
values(1,'Dejasnolo en nuestra manos','manta','25 mayo',0967760813 , '2000');



--------tabla personal_de_limpieza 

insert into personal_de_limpieza (id_limpieza, nombre_encargado_limpeza, hora_entrada, 
hora_salida,numero_cedula, pago_limpieza)
values(1,'franciso solesdipa', '6:00 ', '15:00 ', 2300754632, '1000' );
insert into personal_de_limpieza (id_limpieza, nombre_encargado_limpeza, hora_entrada, 
hora_salida,numero_cedula, pago_limpieza)
values(2,'Santiago lucas', '6:00 ', '15:00 ', 2300754635, '1000' );
insert into personal_de_limpieza (id_limpieza, nombre_encargado_limpeza, hora_entrada, 
hora_salida,numero_cedula, pago_limpieza)
values(3,'felipe chonero', '6:00 ', '15:00 ', 2300754637, '1000' );



--------tabla fallecimiento_de_pacientes 

insert into fallecimiento_de_pacientes (id_fallecimiento, fecha_fallecimiento, diagnostico_fallecimiento, 
lugar_fallecimiento, nombre_fallecido, apellido_fallecido)
values(2, '08/09/2020', 'derrame','asilo', 'martha','perez');
insert into fallecimiento_de_pacientes (id_fallecimiento, fecha_fallecimiento, diagnostico_fallecimiento, 
lugar_fallecimiento, nombre_fallecido, apellido_fallecido)
values(3, '08/09/2020', 'caida de escaleras','asilo', 'marcos','pozo');






--------tabla incidentes_de_pacientes

insert into incidentes_de_pacientes(id_incidentes, fecha_incidente, incidente_descripcion, nombre_persna)
	values(1,'06/12/2020', 'cayo del primer piso', 'ruben gomez');
	
insert into incidentes_de_pacientes(id_incidentes, fecha_incidente, incidente_descripcion, nombre_persna)
	values(2,'06/2/2020', 'se automedico', 'fermando palma');
	
insert into incidentes_de_pacientes(id_incidentes, fecha_incidente, incidente_descripcion, nombre_persna)
	values(3,'06/5/2020', 'intento suicidarse', 'luis mendez');




