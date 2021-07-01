/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     7/1/2021 11:41:46 AM                         */
/*==============================================================*/


drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_2_FK;

drop index ACTIVIDAD_PACIENTE_PK;

drop table ACTIVIDAD_PACIENTE;

drop index ASILO_PK;

drop table ASILO;

drop index RELATIONSHIP_23_FK;

drop index CONSULTAS_MEDICAS_PK;

drop table CONSULTAS_MEDICAS;

drop index RELATIONSHIP_24_FK;

drop index FALLECIMIENTO_DE_PACIENTES_PK;

drop table FALLECIMIENTO_DE_PACIENTES;

drop index RELATIONSHIP_11_FK;

drop index FAMILIAR_CERCANO_PK;

drop table FAMILIAR_CERCANO;

drop index RELATIONSHIP_14_FK;

drop index HABITACIONES_PK;

drop table HABITACIONES;

drop index RELATIONSHIP_8_FK;

drop index INCIDENTES_DE_PACIENTES_PK;

drop table INCIDENTES_DE_PACIENTES;

drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_1_FK;

drop index PACIENTES_ANCIANOS_PK;

drop table PACIENTES_ANCIANOS;

drop index RELATIONSHIP_15_FK;

drop index PACIENTES_PAGOS_PK;

drop table PACIENTES_PAGOS;

drop index RELATIONSHIP_16_FK;

drop index PAGOS_PK;

drop table PAGOS;

drop index RELATIONSHIP_22_FK;

drop index RELATIONSHIP_17_FK;

drop index PERSONAL_DE_DIETA_PK;

drop table PERSONAL_DE_DIETA;

drop index RELATIONSHIP_7_FK;

drop index PERSONAL_DE_LIMPIEZA_PK;

drop table PERSONAL_DE_LIMPIEZA;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_19_FK;

drop index PERSONAL_MEDICO_PK;

drop table PERSONAL_MEDICO;

/*==============================================================*/
/* Table: ACTIVIDAD_PACIENTE                                    */
/*==============================================================*/
create table ACTIVIDAD_PACIENTE (
   ID_ACTIVIDADES_GRUPALES SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   PERSONAL_ACTIVIDAD_G TEXT                 not null,
   HORA_DE_INICIO_ACTIVIDADES TIME                 not null,
   HORA_DE_FIN_ACTIVIDADES TIME                 not null,
   TIPO_ACTIVIDAD_GRUPAL TEXT                 not null,
   PERSONAL_ACTIVIDAD_I TEXT                 not null,
   TIPO_ACTIVIDAD_I     TEXT                 not null,
   constraint PK_ACTIVIDAD_PACIENTE primary key (ID_ACTIVIDADES_GRUPALES)
);

/*==============================================================*/
/* Index: ACTIVIDAD_PACIENTE_PK                                 */
/*==============================================================*/
create unique index ACTIVIDAD_PACIENTE_PK on ACTIVIDAD_PACIENTE (
ID_ACTIVIDADES_GRUPALES
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on ACTIVIDAD_PACIENTE (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on ACTIVIDAD_PACIENTE (
ID_PACIENTES
);

/*==============================================================*/
/* Table: ASILO                                                 */
/*==============================================================*/
create table ASILO (
   ID_ASILO             SERIAL               not null,
   NOMBRE_ASILO         TEXT                 not null,
   CIUDAD_ASILO         TEXT                 not null,
   CALLE_ASILO          TEXT                 not null,
   TELEFONO_ASILO       NUMERIC(10)          not null,
   FUNDACION_DEL_ASILO  TEXT                 not null,
   constraint PK_ASILO primary key (ID_ASILO)
);

/*==============================================================*/
/* Index: ASILO_PK                                              */
/*==============================================================*/
create unique index ASILO_PK on ASILO (
ID_ASILO
);

/*==============================================================*/
/* Table: CONSULTAS_MEDICAS                                     */
/*==============================================================*/
create table CONSULTAS_MEDICAS (
   CONSULTAS_ID         SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   CONSULTAS_REALIZADAS NUMERIC(100)         not null,
   CONSULTA_DESCRIPCION TEXT                 not null,
   constraint PK_CONSULTAS_MEDICAS primary key (CONSULTAS_ID)
);

/*==============================================================*/
/* Index: CONSULTAS_MEDICAS_PK                                  */
/*==============================================================*/
create unique index CONSULTAS_MEDICAS_PK on CONSULTAS_MEDICAS (
CONSULTAS_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on CONSULTAS_MEDICAS (
ID_PACIENTES
);

/*==============================================================*/
/* Table: FALLECIMIENTO_DE_PACIENTES                            */
/*==============================================================*/
create table FALLECIMIENTO_DE_PACIENTES (
   ID_FALLECIMIENTO     SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   FECHA_FALLECIMIENTO  DATE                 not null,
   DIAGNOSTICO_FALLECIMIENTO TEXT                 not null,
   LUGAR_FALLECIMIENTO  TEXT                 not null,
   NOMBRE_FALLECIDO     TEXT                 not null,
   APELLIDO_FALLECIDO   TEXT                 not null,
   constraint PK_FALLECIMIENTO_DE_PACIENTES primary key (ID_FALLECIMIENTO)
);

/*==============================================================*/
/* Index: FALLECIMIENTO_DE_PACIENTES_PK                         */
/*==============================================================*/
create unique index FALLECIMIENTO_DE_PACIENTES_PK on FALLECIMIENTO_DE_PACIENTES (
ID_FALLECIMIENTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on FALLECIMIENTO_DE_PACIENTES (
ID_PACIENTES
);

/*==============================================================*/
/* Table: FAMILIAR_CERCANO                                      */
/*==============================================================*/
create table FAMILIAR_CERCANO (
   ID_FAMILIA           SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   APELLIDO_F           TEXT                 not null,
   DIRECCION_F          TEXT                 not null,
   CELULAR_F            NUMERIC(10)          not null,
   FAMILIAR_DESCRIPCION TEXT                 not null,
   CELULAR2_F           NUMERIC(10)          not null,
   constraint PK_FAMILIAR_CERCANO primary key (ID_FAMILIA)
);

/*==============================================================*/
/* Index: FAMILIAR_CERCANO_PK                                   */
/*==============================================================*/
create unique index FAMILIAR_CERCANO_PK on FAMILIAR_CERCANO (
ID_FAMILIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on FAMILIAR_CERCANO (
ID_PACIENTES
);

/*==============================================================*/
/* Table: HABITACIONES                                          */
/*==============================================================*/
create table HABITACIONES (
   ID_HABITACION        SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   NUMERO_HABITACION    NUMERIC(1000)        not null,
   HABITACION_DESCRIPCION TEXT                 not null,
   constraint PK_HABITACIONES primary key (ID_HABITACION)
);

/*==============================================================*/
/* Index: HABITACIONES_PK                                       */
/*==============================================================*/
create unique index HABITACIONES_PK on HABITACIONES (
ID_HABITACION
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on HABITACIONES (
ID_PACIENTES
);

/*==============================================================*/
/* Table: INCIDENTES_DE_PACIENTES                               */
/*==============================================================*/
create table INCIDENTES_DE_PACIENTES (
   ID_INCIDENTES        SERIAL               not null,
   ID_ASILO             INT4                 null,
   FECHA_INCIDENTE      DATE                 not null,
   INCIDENTE_DESCRIPCION TEXT                 not null,
   NOMBRE_PERSNA        TEXT                 not null,
   constraint PK_INCIDENTES_DE_PACIENTES primary key (ID_INCIDENTES)
);

/*==============================================================*/
/* Index: INCIDENTES_DE_PACIENTES_PK                            */
/*==============================================================*/
create unique index INCIDENTES_DE_PACIENTES_PK on INCIDENTES_DE_PACIENTES (
ID_INCIDENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on INCIDENTES_DE_PACIENTES (
ID_ASILO
);

/*==============================================================*/
/* Table: PACIENTES_ANCIANOS                                    */
/*==============================================================*/
create table PACIENTES_ANCIANOS (
   ID_PACIENTES         SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_INCIDENTES        INT4                 null,
   ID_FALLECIMIENTO     INT4                 null,
   CEDULA_P             NUMERIC(20)          not null,
   NOMBRE_P             TEXT                 not null,
   APELLIDO_P           TEXT                 not null,
   EDAD_P               TEXT                 not null,
   COLOR_P              TEXT                 not null,
   SEXO_P               TEXT                 not null,
   ALTURA_P             TEXT                 not null,
   ANCIANO_SIN_HOGAR    BOOL                 not null,
   FECHA_DE_ENTRADA     DATE                 not null,
   CONDICIONES_SALUD    TEXT                 not null,
   LLENADO_DE_FICHAS    BOOL                 not null,
   constraint PK_PACIENTES_ANCIANOS primary key (ID_PACIENTES)
);

/*==============================================================*/
/* Index: PACIENTES_ANCIANOS_PK                                 */
/*==============================================================*/
create unique index PACIENTES_ANCIANOS_PK on PACIENTES_ANCIANOS (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on PACIENTES_ANCIANOS (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on PACIENTES_ANCIANOS (
ID_INCIDENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on PACIENTES_ANCIANOS (
ID_FALLECIMIENTO
);

/*==============================================================*/
/* Table: PACIENTES_PAGOS                                       */
/*==============================================================*/
create table PACIENTES_PAGOS (
   PAGOS_ID             SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   NOMBRE_PERSONA       TEXT                 not null,
   CEDULA               NUMERIC(10)          not null,
   constraint PK_PACIENTES_PAGOS primary key (PAGOS_ID)
);

/*==============================================================*/
/* Index: PACIENTES_PAGOS_PK                                    */
/*==============================================================*/
create unique index PACIENTES_PAGOS_PK on PACIENTES_PAGOS (
PAGOS_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on PACIENTES_PAGOS (
ID_PACIENTES
);

/*==============================================================*/
/* Table: PAGOS                                                 */
/*==============================================================*/
create table PAGOS (
   ID_PAGOS             SERIAL               not null,
   PAGOS_ID             INT4                 null,
   PRECIO_PAGOS         NUMERIC(20)          not null,
   FECHA_PAGO           DATE                 not null,
   PAGO_POR_TARJETAS    TEXT                 not null,
   PAGO_DINERO_FISICO   TEXT                 not null,
   constraint PK_PAGOS primary key (ID_PAGOS)
);

/*==============================================================*/
/* Index: PAGOS_PK                                              */
/*==============================================================*/
create unique index PAGOS_PK on PAGOS (
ID_PAGOS
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on PAGOS (
PAGOS_ID
);

/*==============================================================*/
/* Table: PERSONAL_DE_DIETA                                     */
/*==============================================================*/
create table PERSONAL_DE_DIETA (
   PERSONAL_DIETA_ID    SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   ID_ASILO             INT4                 null,
   FECHA_ENTRADA        DATE                 not null,
   FECHA_SALIDA         DATE                 not null,
   DIETAS_DESCRIPCION   TEXT                 not null,
   COSTO_DIETA          MONEY                not null,
   TIPO_DE_DIETA        TEXT                 not null,
   ESPECIALISTA_DE_DIETA TEXT                 not null,
   constraint PK_PERSONAL_DE_DIETA primary key (PERSONAL_DIETA_ID)
);

/*==============================================================*/
/* Index: PERSONAL_DE_DIETA_PK                                  */
/*==============================================================*/
create unique index PERSONAL_DE_DIETA_PK on PERSONAL_DE_DIETA (
PERSONAL_DIETA_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on PERSONAL_DE_DIETA (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on PERSONAL_DE_DIETA (
ID_ASILO
);

/*==============================================================*/
/* Table: PERSONAL_DE_LIMPIEZA                                  */
/*==============================================================*/
create table PERSONAL_DE_LIMPIEZA (
   ID_LIMPIEZA          SERIAL               not null,
   ID_ASILO             INT4                 null,
   NOMBRE_ENCARGADO_LIMPEZA TEXT                 not null,
   HORA_ENTRADA         TIME                 not null,
   HORA_SALIDA          TIME                 not null,
   NUMERO_CEDULA        NUMERIC(10)          not null,
   PAGO_LIMPIEZA        MONEY                not null,
   constraint PK_PERSONAL_DE_LIMPIEZA primary key (ID_LIMPIEZA)
);

/*==============================================================*/
/* Index: PERSONAL_DE_LIMPIEZA_PK                               */
/*==============================================================*/
create unique index PERSONAL_DE_LIMPIEZA_PK on PERSONAL_DE_LIMPIEZA (
ID_LIMPIEZA
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on PERSONAL_DE_LIMPIEZA (
ID_ASILO
);

/*==============================================================*/
/* Table: PERSONAL_MEDICO                                       */
/*==============================================================*/
create table PERSONAL_MEDICO (
   ID_PERSONAL_MEDICO   SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   PERSONAL_MEDICINA_GENERAL TEXT                 not null,
   ESPECIALIDAD_DOCTOR  TEXT                 not null,
   MEDICINA_DESCRIPCION TEXT                 not null,
   HORA_ENTRADA         TIME                 not null,
   HORA_SALIDA          TIME                 not null,
   PAGO_MEDICOS         MONEY                not null,
   constraint PK_PERSONAL_MEDICO primary key (ID_PERSONAL_MEDICO)
);

/*==============================================================*/
/* Index: PERSONAL_MEDICO_PK                                    */
/*==============================================================*/
create unique index PERSONAL_MEDICO_PK on PERSONAL_MEDICO (
ID_PERSONAL_MEDICO
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on PERSONAL_MEDICO (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on PERSONAL_MEDICO (
ID_PACIENTES
);

alter table ACTIVIDAD_PACIENTE
   add constraint FK_ACTIVIDA_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table ACTIVIDAD_PACIENTE
   add constraint FK_ACTIVIDA_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table CONSULTAS_MEDICAS
   add constraint FK_CONSULTA_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table FALLECIMIENTO_DE_PACIENTES
   add constraint FK_FALLECIM_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table FAMILIAR_CERCANO
   add constraint FK_FAMILIAR_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table HABITACIONES
   add constraint FK_HABITACI_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table INCIDENTES_DE_PACIENTES
   add constraint FK_INCIDENT_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PACIENTES_ANCIANOS
   add constraint FK_PACIENTE_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PACIENTES_ANCIANOS
   add constraint FK_PACIENTE_RELATIONS_INCIDENT foreign key (ID_INCIDENTES)
      references INCIDENTES_DE_PACIENTES (ID_INCIDENTES)
      on delete restrict on update restrict;

alter table PACIENTES_ANCIANOS
   add constraint FK_PACIENTE_RELATIONS_FALLECIM foreign key (ID_FALLECIMIENTO)
      references FALLECIMIENTO_DE_PACIENTES (ID_FALLECIMIENTO)
      on delete restrict on update restrict;

alter table PACIENTES_PAGOS
   add constraint FK_PACIENTE_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PAGOS
   add constraint FK_PAGOS_RELATIONS_PACIENTE foreign key (PAGOS_ID)
      references PACIENTES_PAGOS (PAGOS_ID)
      on delete restrict on update restrict;

alter table PERSONAL_DE_DIETA
   add constraint FK_PERSONAL_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PERSONAL_DE_DIETA
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_DE_LIMPIEZA
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_MEDICO
   add constraint FK_PERSONAL_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PERSONAL_MEDICO
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

