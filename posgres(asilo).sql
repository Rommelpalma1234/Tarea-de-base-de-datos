/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     5/31/2021 4:04:44 PM                         */
/*==============================================================*/


drop index RELATIONSHIP_11_FK;

drop index ACTIVIDADES_GRUPALES_PK;

drop table ACTIVIDADES_GRUPALES;

drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_20_FK;

drop index RELATIONSHIP_19_FK;

drop index RELATIONSHIP_18_FK;

drop index RELATIONSHIP_17_FK;

drop index ANCIANOS_SIN_HOGAR_PK;

drop table ANCIANOS_SIN_HOGAR;

drop index RELATIONSHIP_24_FK;

drop index ASILO_PK;

drop table ASILO;

drop index CANTONES_PK;

drop table CANTONES;

drop index RELATIONSHIP_25_FK;

drop index CIUDAD_PK;

drop table CIUDAD;

drop index RELATIONSHIP_12_FK;

drop index ESPECIALISTA_INDIVIDUALES_PK;

drop table ESPECIALISTA_INDIVIDUALES;

drop index RELATIONSHIP_22_FK;

drop index ESTANCIA_DE_PACIENTES_PK;

drop table ESTANCIA_DE_PACIENTES;

drop index RELATIONSHIP_16_FK;

drop index FALLECIMIENTO_DE_PACIENTES_PK;

drop table FALLECIMIENTO_DE_PACIENTES;

drop index RELATIONSHIP_28_FK;

drop index FAMILIAR_CERCANO_PK;

drop table FAMILIAR_CERCANO;

drop index RELATIONSHIP_29_FK;

drop index HABITACIONES_PK;

drop table HABITACIONES;

drop index RELATIONSHIP_23_FK;

drop index INCIDENTES_DE_PACIENTES_PK;

drop table INCIDENTES_DE_PACIENTES;

drop index RELATIONSHIP_8_FK;

drop index RELATIONSHIP_7_FK;

drop index RELATIONSHIP_4_FK;

drop index RELATIONSHIP_3_FK;

drop index RELATIONSHIP_2_FK;

drop index RELATIONSHIP_1_FK;

drop index PACIENTES_PK;

drop table PACIENTES;

drop index RELATIONSHIP_9_FK;

drop index RELATIONSHIP_6_FK;

drop index PAGOS_PK;

drop table PAGOS;

drop index RELATIONSHIP_15_FK;

drop index PERSONAL_DE_LIMPIEZA_PK;

drop table PERSONAL_DE_LIMPIEZA;

drop index RELATIONSHIP_13_FK;

drop index PERSONAL_DIETAS_PK;

drop table PERSONAL_DIETAS;

drop index RELATIONSHIP_14_FK;

drop index PERSONAL_DOCTORES_PK;

drop table PERSONAL_DOCTORES;

drop index RELATIONSHIP_26_FK;

drop index PROVINCIAS_PK;

drop table PROVINCIAS;

drop index RELATIONSHIP_30_FK;

drop index TELEFONO_PK;

drop table TELEFONO;

drop index TIPO_PACIENTE_PK;

drop table TIPO_PACIENTE;

drop index TIPO_PAGO_PK;

drop table TIPO_PAGO;

/*==============================================================*/
/* Table: ACTIVIDADES_GRUPALES                                  */
/*==============================================================*/
create table ACTIVIDADES_GRUPALES (
   ID_ACTIVIDADES_GRUPALES SERIAL               not null,
   ID_ASILO             INT4                 null,
   NOMBRE_ENCARGADO     TEXT                 not null,
   FECHA_INGRESO        TIME                 not null,
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
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on ACTIVIDADES_GRUPALES (
ID_ASILO
);

/*==============================================================*/
/* Table: ANCIANOS_SIN_HOGAR                                    */
/*==============================================================*/
create table ANCIANOS_SIN_HOGAR (
   ID_ANCIANOS_SIN_HOGAR SERIAL               not null,
   ID_ESPECIALISTA      INT4                 null,
   ID_ACTIVIDADES_GRUPALES INT4                 null,
   ID_ASILO             INT4                 null,
   LUGAR_ENCONTRADO     TEXT                 not null,
   NOMBRE_ANCIANO_SIN_H TEXT                 not null,
   PAGOS_BECAS_ANCIANO_SIN_H TEXT                 not null,
   CEDULA_H             NUMERIC(10)          not null,
   SEXO_H               TEXT                 not null,
   COLOR_H              TEXT                 not null,
   constraint PK_ANCIANOS_SIN_HOGAR primary key (ID_ANCIANOS_SIN_HOGAR)
);

/*==============================================================*/
/* Index: ANCIANOS_SIN_HOGAR_PK                                 */
/*==============================================================*/
create unique index ANCIANOS_SIN_HOGAR_PK on ANCIANOS_SIN_HOGAR (
ID_ANCIANOS_SIN_HOGAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on ANCIANOS_SIN_HOGAR (
ID_ANCIANOS_SIN_HOGAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on ANCIANOS_SIN_HOGAR (
ID_ANCIANOS_SIN_HOGAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_19_FK on ANCIANOS_SIN_HOGAR (
ID_ESPECIALISTA
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on ANCIANOS_SIN_HOGAR (
ID_ACTIVIDADES_GRUPALES
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on ANCIANOS_SIN_HOGAR (
ID_ASILO
);

/*==============================================================*/
/* Table: ASILO                                                 */
/*==============================================================*/
create table ASILO (
   ID_ASILO             SERIAL               not null,
   ID_CIUDAD_           INT4                 null,
   NOMBRE_ASILO         TEXT                 not null,
   CIUDAD_ASILO         TEXT                 not null,
   CALLE_ASILO          TEXT                 not null,
   TELEFONO_ASILO       NUMERIC(10)          not null,
   constraint PK_ASILO primary key (ID_ASILO)
);

/*==============================================================*/
/* Index: ASILO_PK                                              */
/*==============================================================*/
create unique index ASILO_PK on ASILO (
ID_ASILO
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on ASILO (
ID_CIUDAD_
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
   ID_CIUDAD_           SERIAL               not null,
   ID_PROVIENCIA        INT4                 null,
   CIUDAD_NOMBRE_       TEXT                 not null,
   constraint PK_CIUDAD primary key (ID_CIUDAD_)
);

/*==============================================================*/
/* Index: CIUDAD_PK                                             */
/*==============================================================*/
create unique index CIUDAD_PK on CIUDAD (
ID_CIUDAD_
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on CIUDAD (
ID_PROVIENCIA
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
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on ESPECIALISTA_INDIVIDUALES (
ID_ASILO
);

/*==============================================================*/
/* Table: ESTANCIA_DE_PACIENTES                                 */
/*==============================================================*/
create table ESTANCIA_DE_PACIENTES (
   ID_ESTANCIA          SERIAL               not null,
   ID_ASILO             INT4                 null,
   FECHA_DE_ENTREGA     DATE                 not null,
   NOMBRE_FAMILIAR      TEXT                 not null,
   LLENADO_DE_FICHAS    TEXT                 not null,
   CONDICIONES_DE_SALUD_ANCIANO TEXT                 not null,
   constraint PK_ESTANCIA_DE_PACIENTES primary key (ID_ESTANCIA)
);

/*==============================================================*/
/* Index: ESTANCIA_DE_PACIENTES_PK                              */
/*==============================================================*/
create unique index ESTANCIA_DE_PACIENTES_PK on ESTANCIA_DE_PACIENTES (
ID_ESTANCIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on ESTANCIA_DE_PACIENTES (
ID_ASILO
);

/*==============================================================*/
/* Table: FALLECIMIENTO_DE_PACIENTES                            */
/*==============================================================*/
create table FALLECIMIENTO_DE_PACIENTES (
   ID_FALLECIMIENTO     SERIAL               not null,
   ID_ASILO             INT4                 null,
   FECHA_FALLECIMIENTO  TIME                 not null,
   DIAGNOSTICO_FALLECIMIENTO TEXT                 not null,
   LUGAR_FALLECIMIENTO  TEXT                 not null,
   ANOS_DEL_FALLECIDO   TIME                 not null,
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
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on FALLECIMIENTO_DE_PACIENTES (
ID_ASILO
);

/*==============================================================*/
/* Table: FAMILIAR_CERCANO                                      */
/*==============================================================*/
create table FAMILIAR_CERCANO (
   _ID_FAMILIA_         SERIAL               not null,
   ID_PACIENTES         INT4                 null,
   APELLIDO_F_          TEXT                 not null,
   DIRECCION_F_         TEXT                 not null,
   CELULAR_F            NUMERIC(10)          not null,
   FAMILIAR_DESCRIPCION TEXT                 not null,
   constraint PK_FAMILIAR_CERCANO primary key (_ID_FAMILIA_)
);

/*==============================================================*/
/* Index: FAMILIAR_CERCANO_PK                                   */
/*==============================================================*/
create unique index FAMILIAR_CERCANO_PK on FAMILIAR_CERCANO (
_ID_FAMILIA_
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_28_FK on FAMILIAR_CERCANO (
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
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_29_FK on HABITACIONES (
ID_PACIENTES
);

/*==============================================================*/
/* Table: INCIDENTES_DE_PACIENTES                               */
/*==============================================================*/
create table INCIDENTES_DE_PACIENTES (
   ID_INCIDENTES        SERIAL               not null,
   ID_ASILO             INT4                 null,
   FECHA_INCIDENTE      TIME                 not null,
   INCIDENTE_DESCRIPCION TEXT                 not null,
   constraint PK_INCIDENTES_DE_PACIENTES primary key (ID_INCIDENTES)
);

/*==============================================================*/
/* Index: INCIDENTES_DE_PACIENTES_PK                            */
/*==============================================================*/
create unique index INCIDENTES_DE_PACIENTES_PK on INCIDENTES_DE_PACIENTES (
ID_INCIDENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on INCIDENTES_DE_PACIENTES (
ID_ASILO
);

/*==============================================================*/
/* Table: PACIENTES                                             */
/*==============================================================*/
create table PACIENTES (
   ID_PACIENTES         SERIAL               not null,
   ID_ACTIVIDADES_GRUPALES INT4                 null,
   ID_ESPECIALISTA      INT4                 null,
   _TIPO_PACIENTE_ID_   INT4                 null,
   ID_ASILO             INT4                 null,
   CEDULA_P             NUMERIC(20)          not null,
   NOMBRE_P             TEXT                 not null,
   APELLIDO_            TEXT                 not null,
   EDAD_P               TEXT                 not null,
   COLOR_P              TEXT                 not null,
   SEXO_P               TEXT                 not null,
   ALTURA_P             TEXT                 not null,
   constraint PK_PACIENTES primary key (ID_PACIENTES)
);

/*==============================================================*/
/* Index: PACIENTES_PK                                          */
/*==============================================================*/
create unique index PACIENTES_PK on PACIENTES (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on PACIENTES (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on PACIENTES (
ID_PACIENTES
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on PACIENTES (
ID_ACTIVIDADES_GRUPALES
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on PACIENTES (
ID_ESPECIALISTA
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on PACIENTES (
_TIPO_PACIENTE_ID_
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on PACIENTES (
ID_ASILO
);

/*==============================================================*/
/* Table: PAGOS                                                 */
/*==============================================================*/
create table PAGOS (
   ID_PAGOS_            SERIAL               not null,
   _ID_FAMILIA_         INT4                 null,
   ID_PAGO              INT4                 null,
   PRECIO_PAGOS_        NUMERIC(20)          not null,
   FECHA_PAGO_          DATE                 not null,
   PAGO_POR_TARJETAS_   TEXT                 not null,
   PAGO_DINERO_FISICO_  TEXT                 not null,
   constraint PK_PAGOS primary key (ID_PAGOS_)
);

/*==============================================================*/
/* Index: PAGOS_PK                                              */
/*==============================================================*/
create unique index PAGOS_PK on PAGOS (
ID_PAGOS_
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on PAGOS (
_ID_FAMILIA_
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on PAGOS (
ID_PAGO
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
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on PERSONAL_DE_LIMPIEZA (
ID_ASILO
);

/*==============================================================*/
/* Table: PERSONAL_DIETAS                                       */
/*==============================================================*/
create table PERSONAL_DIETAS (
   ID_PL_DE_DIETAS      SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   ID_ANCIANOS_SIN_HOGAR INT4                 null,
   NOMBRE_DIETA         TEXT                 not null,
   ENCARGADO_DE_DIETA   TEXT                 not null,
   FECHA_DE_ENTRADA     TIME                 not null,
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
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on PERSONAL_DIETAS (
ID_ASILO
);

/*==============================================================*/
/* Table: PERSONAL_DOCTORES                                     */
/*==============================================================*/
create table PERSONAL_DOCTORES (
   ID_DOCTOR            SERIAL               not null,
   ID_ASILO             INT4                 null,
   ID_PACIENTES         INT4                 null,
   ID_ANCIANOS_SIN_HOGAR INT4                 null,
   NOMBRE_D             TEXT                 not null,
   APELLIDO_D           TEXT                 not null,
   ESPECIALIDAD_D       TEXT                 not null,
   DEPARTAMENTO_D       TEXT                 not null,
   PAGOS_A_DOCTORES     MONEY                not null,
   constraint PK_PERSONAL_DOCTORES primary key (ID_DOCTOR)
);

/*==============================================================*/
/* Index: PERSONAL_DOCTORES_PK                                  */
/*==============================================================*/
create unique index PERSONAL_DOCTORES_PK on PERSONAL_DOCTORES (
ID_DOCTOR
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on PERSONAL_DOCTORES (
ID_ASILO
);

/*==============================================================*/
/* Table: PROVINCIAS                                            */
/*==============================================================*/
create table PROVINCIAS (
   ID_PROVIENCIA        SERIAL               not null,
   ID_CANTON            INT4                 null,
   PROVINCIA_NOMBRE     TEXT                 not null,
   constraint PK_PROVINCIAS primary key (ID_PROVIENCIA)
);

/*==============================================================*/
/* Index: PROVINCIAS_PK                                         */
/*==============================================================*/
create unique index PROVINCIAS_PK on PROVINCIAS (
ID_PROVIENCIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on PROVINCIAS (
ID_CANTON
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   ID_TELEFONO          SERIAL               not null,
   _ID_FAMILIA_         INT4                 null,
   TELEFONO_EMERGENCIAS NUMERIC(10)          not null,
   constraint PK_TELEFONO primary key (ID_TELEFONO)
);

/*==============================================================*/
/* Index: TELEFONO_PK                                           */
/*==============================================================*/
create unique index TELEFONO_PK on TELEFONO (
ID_TELEFONO
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_30_FK on TELEFONO (
_ID_FAMILIA_
);

/*==============================================================*/
/* Table: TIPO_PACIENTE                                         */
/*==============================================================*/
create table TIPO_PACIENTE (
   _TIPO_PACIENTE_ID_   SERIAL               not null,
   PACIENTE_DESCRIPCION TEXT                 not null,
   constraint PK_TIPO_PACIENTE primary key (_TIPO_PACIENTE_ID_)
);

/*==============================================================*/
/* Index: TIPO_PACIENTE_PK                                      */
/*==============================================================*/
create unique index TIPO_PACIENTE_PK on TIPO_PACIENTE (
_TIPO_PACIENTE_ID_
);

/*==============================================================*/
/* Table: TIPO_PAGO                                             */
/*==============================================================*/
create table TIPO_PAGO (
   ID_PAGO              SERIAL               not null,
   PAGO_DESCRITCION     TEXT                 not null,
   constraint PK_TIPO_PAGO primary key (ID_PAGO)
);

/*==============================================================*/
/* Index: TIPO_PAGO_PK                                          */
/*==============================================================*/
create unique index TIPO_PAGO_PK on TIPO_PAGO (
ID_PAGO
);

alter table ACTIVIDADES_GRUPALES
   add constraint FK_ACTIVIDA_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table ANCIANOS_SIN_HOGAR
   add constraint FK_ANCIANOS_RELATIONS_ESPECIAL foreign key (ID_ESPECIALISTA)
      references ESPECIALISTA_INDIVIDUALES (ID_ESPECIALISTA)
      on delete restrict on update restrict;

alter table ANCIANOS_SIN_HOGAR
   add constraint FK_ANCIANOS_RELATIONS_ACTIVIDA foreign key (ID_ACTIVIDADES_GRUPALES)
      references ACTIVIDADES_GRUPALES (ID_ACTIVIDADES_GRUPALES)
      on delete restrict on update restrict;

alter table ANCIANOS_SIN_HOGAR
   add constraint FK_ANCIANOS_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table ASILO
   add constraint FK_ASILO_RELATIONS_CIUDAD foreign key (ID_CIUDAD_)
      references CIUDAD (ID_CIUDAD_)
      on delete restrict on update restrict;

alter table CIUDAD
   add constraint FK_CIUDAD_RELATIONS_PROVINCI foreign key (ID_PROVIENCIA)
      references PROVINCIAS (ID_PROVIENCIA)
      on delete restrict on update restrict;

alter table ESPECIALISTA_INDIVIDUALES
   add constraint FK_ESPECIAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table ESTANCIA_DE_PACIENTES
   add constraint FK_ESTANCIA_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table FALLECIMIENTO_DE_PACIENTES
   add constraint FK_FALLECIM_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table FAMILIAR_CERCANO
   add constraint FK_FAMILIAR_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES (ID_PACIENTES)
      on delete restrict on update restrict;

alter table HABITACIONES
   add constraint FK_HABITACI_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES (ID_PACIENTES)
      on delete restrict on update restrict;

alter table INCIDENTES_DE_PACIENTES
   add constraint FK_INCIDENT_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_RELATIONS_ACTIVIDA foreign key (ID_ACTIVIDADES_GRUPALES)
      references ACTIVIDADES_GRUPALES (ID_ACTIVIDADES_GRUPALES)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_RELATIONS_ESPECIAL foreign key (ID_ESPECIALISTA)
      references ESPECIALISTA_INDIVIDUALES (ID_ESPECIALISTA)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_RELATIONS_TIPO_PAC foreign key (_TIPO_PACIENTE_ID_)
      references TIPO_PACIENTE (_TIPO_PACIENTE_ID_)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PAGOS
   add constraint FK_PAGOS_RELATIONS_FAMILIAR foreign key (_ID_FAMILIA_)
      references FAMILIAR_CERCANO (_ID_FAMILIA_)
      on delete restrict on update restrict;

alter table PAGOS
   add constraint FK_PAGOS_RELATIONS_TIPO_PAG foreign key (ID_PAGO)
      references TIPO_PAGO (ID_PAGO)
      on delete restrict on update restrict;

alter table PERSONAL_DE_LIMPIEZA
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_DIETAS
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_DIETAS
   add constraint FK_PERSONAL_RELATIONS_ANCIANOS foreign key (ID_ANCIANOS_SIN_HOGAR)
      references ANCIANOS_SIN_HOGAR (ID_ANCIANOS_SIN_HOGAR)
      on delete restrict on update restrict;

alter table PERSONAL_DIETAS
   add constraint FK_PERSONAL_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PERSONAL_DOCTORES
   add constraint FK_PERSONAL_RELATIONS_PACIENTE foreign key (ID_PACIENTES)
      references PACIENTES (ID_PACIENTES)
      on delete restrict on update restrict;

alter table PERSONAL_DOCTORES
   add constraint FK_PERSONAL_RELATIONS_ASILO foreign key (ID_ASILO)
      references ASILO (ID_ASILO)
      on delete restrict on update restrict;

alter table PERSONAL_DOCTORES
   add constraint FK_PERSONAL_RELATIONS_ANCIANOS foreign key (ID_ANCIANOS_SIN_HOGAR)
      references ANCIANOS_SIN_HOGAR (ID_ANCIANOS_SIN_HOGAR)
      on delete restrict on update restrict;

alter table PROVINCIAS
   add constraint FK_PROVINCI_RELATIONS_CANTONES foreign key (ID_CANTON)
      references CANTONES (ID_CANTON)
      on delete restrict on update restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_RELATIONS_FAMILIAR foreign key (_ID_FAMILIA_)
      references FAMILIAR_CERCANO (_ID_FAMILIA_)
      on delete restrict on update restrict;

