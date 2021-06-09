/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     6/5/2021 4:53:25 AM                          */
/*==============================================================*/


drop index RELATIONSHIP_17_FK;

drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_2_FK;

drop index ACTIVIDADES_GRUPALES_PK;

drop table ACTIVIDADES_GRUPALES;

drop index ASILO_PK;

drop table ASILO;

drop index CANTONES_PK;

drop table CANTONES;

drop index RELATIONSHIP_9_FK;

drop index RELATIONSHIP_3_FK;

drop index CIUDAD_PK;

drop table CIUDAD;

drop index RELATIONSHIP_4_FK;

drop index ESPECIALISTA_INDIVIDUALES_PK;

drop table ESPECIALISTA_INDIVIDUALES;

drop index RELATIONSHIP_6_FK;

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

drop index RELATIONSHIP_1_FK;

drop index PACIENTES_ANCIANOS_PK;

drop table PACIENTES_ANCIANOS;

drop index RELATIONSHIP_15_FK;

drop index PACIENTES_PAGOS_PK;

drop table PACIENTES_PAGOS;

drop index RELATIONSHIP_16_FK;

drop index PAGOS_PK;

drop table PAGOS;

drop index RELATIONSHIP_7_FK;

drop index PERSONAL_DE_LIMPIEZA_PK;

drop table PERSONAL_DE_LIMPIEZA;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_12_FK;

drop index PERSONAL_DIETAS_PK;

drop table PERSONAL_DIETAS;

drop index RELATIONSHIP_13_FK;

drop index RELATIONSHIP_5_FK;

drop index PERSONAL_MEDICO_PK;

drop table PERSONAL_MEDICO;

/*==============================================================*/
/* Table: ACTIVIDADES_GRUPALES                                  */
/*==============================================================*/
create table ACTIVIDADES_GRUPALES (
   ID_ACTIVIDADES_GRUPALES SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   ID_ESPECIALISTA      INT4                 null,
   NOMBRE_ENCARGADO     TEXT                 not null,
   FECHA_INGRESO        DATE                 not null,
   HORA_DE_INICIO_ACTIVIDADES TIME                 not null,
   HORA_DE_FIN_ACTIVIDADES TIME                 not null,
   PAGO_PERSONA_GRUPAL  MONEY                not null,
   TIPO_ACTIVIDAD_GRUPAL TEXT                 not null,
   constraint PK_ACTIVIDADES_GRUPALES primary key (ID_ACTIVIDADES_GRUPALES)
);

/*==============================================================*/
/* Index: ACTIVIDADES_GRUPALES_PK                               */
/*==============================================================*/
create unique index ACTIVIDADES_GRUPALES_PK on ACTIVIDADES_GRUPALES (
ID_ACTIVIDADES_GRUPALES
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on ACTIVIDADES_GRUPALES (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on ACTIVIDADES_GRUPALES (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on ACTIVIDADES_GRUPALES (
ID_ESPECIALISTA
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
/* Table: CANTONES                                              */
/*==============================================================*/
create table CANTONES (
   ID_CANTON            SERIAL               not null,
   CANTON_NOMBRE        TEXT                 not null,
   constraint PK_CANTONES primary key (ID_CANTON)
);

/*==============================================================*/
/* Index: CANTONES_PK                                           */
/*==============================================================*/
create unique index CANTONES_PK on CANTONES (
ID_CANTON
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   ID_CIUDAD            SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_CANTON            INT4                 null,
   CIUDAD_NOMBRE        TEXT                 not null,
   constraint PK_CIUDAD primary key (ID_CIUDAD)
);

/*==============================================================*/
/* Index: CIUDAD_PK                                             */
/*==============================================================*/
create unique index CIUDAD_PK on CIUDAD (
ID_CIUDAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on CIUDAD (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on CIUDAD (
ID_CANTON
);

/*==============================================================*/
/* Table: ESPECIALISTA_INDIVIDUALES                             */
/*==============================================================*/
create table ESPECIALISTA_INDIVIDUALES (
   ID_ESPECIALISTA      SERIAL               not null,
   ID_ASILO             INT4                 null,
   CEDULA_ESPECIALESTA  NUMERIC(10)          not null,
   ESPECIALIADAD        TEXT                 not null,
   NOMBRE_ESPECIALISTA  TEXT                 not null,
   PAGO_A_ESPECIALISTA  MONEY                not null,
   HORA_INICIO_ACTIVIDAD TIME                 not null,
   HORA_FIN_ACTIVIDAD   TIME                 not null,
   TIPO_ACTIVIDAD_INDIVIDUAL TEXT                 not null,
   constraint PK_ESPECIALISTA_INDIVIDUALES primary key (ID_ESPECIALISTA)
);

/*==============================================================*/
/* Index: ESPECIALISTA_INDIVIDUALES_PK                          */
/*==============================================================*/
create unique index ESPECIALISTA_INDIVIDUALES_PK on ESPECIALISTA_INDIVIDUALES (
ID_ESPECIALISTA
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on ESPECIALISTA_INDIVIDUALES (
ID_ASILO
);

/*==============================================================*/
/* Table: FALLECIMIENTO_DE_PACIENTES                            */
/*==============================================================*/
create table FALLECIMIENTO_DE_PACIENTES (
   ID_FALLECIMIENTO     SERIAL               not null,
   ID_ASILO             INT4                 null,
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
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on FALLECIMIENTO_DE_PACIENTES (
ID_ASILO
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
   CEDULA_P             NUMERIC(20)          not null,
   NOMBRE_P             TEXT                 not null,
   APELLIDO_P           TEXT                 not null,
   EDAD_P               TEXT                 not null,
   COLOR_P              TEXT                 not null,
   SEXO_P               TEXT                 not null,
   ALTURA_P             TEXT                 not null,
   CONSULTAS_MECICAS    TEXT                 not null,
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
/* Table: PERSONAL_DIETAS                                       */
/*==============================================================*/
create table PERSONAL_DIETAS (
   ID_PL_DE_DIETAS      SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   ID_ASILO             INT4                 null,
   NOMBRE_DIETA         TEXT                 not null,
   ENCARGADO_DE_DIETA   TEXT                 not null,
   FECHA_DE_ENTRADA     DATE                 not null,
   PAGO_ESPECIALIDAD    MONEY                not null,
   DIETA_SEMANAL        DATE                 not null,
   COSTO_DE_DIETA       MONEY                not null,
   constraint PK_PERSONAL_DIETAS primary key (ID_PL_DE_DIETAS)
);

/*==============================================================*/
/* Index: PERSONAL_DIETAS_PK                                    */
/*==============================================================*/
create unique index PERSONAL_DIETAS_PK on PERSONAL_DIETAS (
ID_PL_DE_DIETAS
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on PERSONAL_DIETAS (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on PERSONAL_DIETAS (
ID_ASILO
);

/*==============================================================*/
/* Table: PERSONAL_MEDICO                                       */
/*==============================================================*/
create table PERSONAL_MEDICO (
   ID_DOCTOR            SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   NOMBRE_D             TEXT                 not null,
   APELLIDO_D           TEXT                 not null,
   ESPECIALIDAD_D       TEXT                 not null,
   DEPARTAMENTO_D       TEXT                 not null,
   PAGOS_A_DOCTORES     MONEY                not null,
   constraint PK_PERSONAL_MEDICO primary key (ID_DOCTOR)
);

/*==============================================================*/
/* Index: PERSONAL_MEDICO_PK                                    */
/*==============================================================*/
create unique index PERSONAL_MEDICO_PK on PERSONAL_MEDICO (
ID_DOCTOR
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on PERSONAL_MEDICO (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on PERSONAL_MEDICO (
ID_PACIENTES
);

alter table ACTIVIDADES_GRUPALES
   add constraint FK_ACTIVIDA_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table ACTIVIDADES_GRUPALES
   add constraint FK_ACTIVIDA_RELATIONS_ESPECIAL foreign key (ID_ESPECIALISTA)
      references ESPECIALISTA_INDIVIDUALES (ID_ESPECIALISTA)
      on delete restrict on update restrict;

alter table ACTIVIDADES_GRUPALES
   add constraint FK_ACTIVIDA_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table CIUDAD
   add constraint FK_CIUDAD_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table CIUDAD
   add constraint FK_CIUDAD_RELATIONS_CANTONES foreign key (ID_CANTON)
      references CANTONES (ID_CANTON)
      on delete restrict on update restrict;

alter table ESPECIALISTA_INDIVIDUALES
   add constraint FK_ESPECIAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table FALLECIMIENTO_DE_PACIENTES
   add constraint FK_FALLECIM_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
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

alter table PACIENTES_PAGOS
   add constraint FK_PACIENTE_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PAGOS
   add constraint FK_PAGOS_RELATIONS_PACIENTE foreign key (PAGOS_ID)
      references PACIENTES_PAGOS (PAGOS_ID)
      on delete restrict on update restrict;

alter table PERSONAL_DE_LIMPIEZA
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_DIETAS
   add constraint FK_PERSONAL_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES_ANCIANOS (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PERSONAL_DIETAS
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

