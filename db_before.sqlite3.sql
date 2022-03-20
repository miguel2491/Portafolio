BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "academico_academico" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	varchar(100) NOT NULL,
	"lugar"	varchar(100) NOT NULL,
	"logo"	varchar(100) NOT NULL,
	"finicio"	date NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag" >= 0),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL,
	"name"	varchar(150) NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"first_name"	varchar(150) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "empresas_empresas" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"actividades"	text NOT NULL,
	"ocupacion"	varchar(100) NOT NULL,
	"image"	varchar(100) NOT NULL,
	"finicio"	date NOT NULL,
	"ffinal"	date NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "portfolio_proyect" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	varchar(250) NOT NULL,
	"image"	varchar(100) NOT NULL,
	"url"	varchar(200) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "lenguajes_lenguajes" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"nivel"	varchar(100) NOT NULL,
	"date"	date NOT NULL,
	"imagen"	varchar(100),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "frameworks_frameworks" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	text NOT NULL,
	"date"	date NOT NULL,
	"imagen"	varchar(100),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "cms_cms" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	text NOT NULL,
	"date"	date NOT NULL,
	"imagen"	varchar(100),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "blog_post" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	text NOT NULL,
	"image"	varchar(100) NOT NULL,
	"date"	date NOT NULL,
	"imagen_empresa"	varchar(100),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "otros_otros" (
	"id"	INTEGER NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	TEXT NOT NULL,
	"image"	varchar(100) NOT NULL,
	"url"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "django_migrations" VALUES (1,'academico','0001_initial','2022-03-19 16:31:34.793611');
INSERT INTO "django_migrations" VALUES (2,'contenttypes','0001_initial','2022-03-19 16:31:34.834085');
INSERT INTO "django_migrations" VALUES (3,'auth','0001_initial','2022-03-19 16:31:34.907182');
INSERT INTO "django_migrations" VALUES (4,'admin','0001_initial','2022-03-19 16:31:34.968072');
INSERT INTO "django_migrations" VALUES (5,'admin','0002_logentry_remove_auto_add','2022-03-19 16:31:35.013573');
INSERT INTO "django_migrations" VALUES (6,'admin','0003_logentry_add_action_flag_choices','2022-03-19 16:31:35.105830');
INSERT INTO "django_migrations" VALUES (7,'contenttypes','0002_remove_content_type_name','2022-03-19 16:31:35.227125');
INSERT INTO "django_migrations" VALUES (8,'auth','0002_alter_permission_name_max_length','2022-03-19 16:31:35.259763');
INSERT INTO "django_migrations" VALUES (9,'auth','0003_alter_user_email_max_length','2022-03-19 16:31:35.325140');
INSERT INTO "django_migrations" VALUES (10,'auth','0004_alter_user_username_opts','2022-03-19 16:31:35.424427');
INSERT INTO "django_migrations" VALUES (11,'auth','0005_alter_user_last_login_null','2022-03-19 16:31:35.502789');
INSERT INTO "django_migrations" VALUES (12,'auth','0006_require_contenttypes_0002','2022-03-19 16:31:35.511984');
INSERT INTO "django_migrations" VALUES (13,'auth','0007_alter_validators_add_error_messages','2022-03-19 16:31:35.551149');
INSERT INTO "django_migrations" VALUES (14,'auth','0008_alter_user_username_max_length','2022-03-19 16:31:35.592262');
INSERT INTO "django_migrations" VALUES (15,'auth','0009_alter_user_last_name_max_length','2022-03-19 16:31:35.687389');
INSERT INTO "django_migrations" VALUES (16,'auth','0010_alter_group_name_max_length','2022-03-19 16:31:35.727583');
INSERT INTO "django_migrations" VALUES (17,'auth','0011_update_proxy_permissions','2022-03-19 16:31:35.781598');
INSERT INTO "django_migrations" VALUES (18,'auth','0012_alter_user_first_name_max_length','2022-03-19 16:31:35.851120');
INSERT INTO "django_migrations" VALUES (19,'blog','0001_initial','2022-03-19 16:31:35.918273');
INSERT INTO "django_migrations" VALUES (20,'cms','0001_initial','2022-03-19 16:31:35.932304');
INSERT INTO "django_migrations" VALUES (21,'empresas','0001_initial','2022-03-19 16:31:35.982706');
INSERT INTO "django_migrations" VALUES (22,'frameworks','0001_initial','2022-03-19 16:31:36.013622');
INSERT INTO "django_migrations" VALUES (23,'lenguajes','0001_initial','2022-03-19 16:31:36.060208');
INSERT INTO "django_migrations" VALUES (24,'portfolio','0001_initial','2022-03-19 16:31:36.114226');
INSERT INTO "django_migrations" VALUES (25,'sessions','0001_initial','2022-03-19 16:31:36.178010');
INSERT INTO "academico_academico" VALUES (1,'Instituto Tecnológico de Puebla','Licenciatura en Informática','Puebla,Puebla','academico/images/itp_NJevQiS.png','2015-06-15');
INSERT INTO "django_admin_log" VALUES (1,'2022-03-19 18:45:35.342712','1','Academico object (1)','[{"added": {}}]',9,1,1);
INSERT INTO "django_admin_log" VALUES (2,'2022-03-19 18:49:27.725490','1','Cms object (1)','[{"added": {}}]',13,1,1);
INSERT INTO "django_admin_log" VALUES (3,'2022-03-19 18:49:32.466327','1','Cms object (1)','[]',13,1,2);
INSERT INTO "django_admin_log" VALUES (4,'2022-03-19 18:49:54.157496','2','Cms object (2)','[{"added": {}}]',13,1,1);
INSERT INTO "django_admin_log" VALUES (5,'2022-03-19 19:00:15.061472','1','Empresas object (1)','[{"added": {}}]',10,1,1);
INSERT INTO "django_admin_log" VALUES (6,'2022-03-19 19:01:44.772585','2','Empresas object (2)','[{"added": {}}]',10,1,1);
INSERT INTO "django_admin_log" VALUES (7,'2022-03-19 19:04:56.167279','3','Empresas object (3)','[{"added": {}}]',10,1,1);
INSERT INTO "django_admin_log" VALUES (8,'2022-03-19 19:07:32.628435','4','Empresas object (4)','[{"added": {}}]',10,1,1);
INSERT INTO "django_admin_log" VALUES (9,'2022-03-19 19:15:43.000750','5','Empresas object (5)','[{"added": {}}]',10,1,1);
INSERT INTO "django_admin_log" VALUES (10,'2022-03-19 19:20:12.410392','1','Frameworks object (1)','[{"added": {}}]',12,1,1);
INSERT INTO "django_admin_log" VALUES (11,'2022-03-19 19:20:42.045695','2','Frameworks object (2)','[{"added": {}}]',12,1,1);
INSERT INTO "django_admin_log" VALUES (12,'2022-03-19 19:21:02.276229','3','Frameworks object (3)','[{"added": {}}]',12,1,1);
INSERT INTO "django_admin_log" VALUES (13,'2022-03-19 19:21:30.693020','4','Frameworks object (4)','[{"added": {}}]',12,1,1);
INSERT INTO "django_admin_log" VALUES (14,'2022-03-19 19:22:34.802092','5','Frameworks object (5)','[{"added": {}}]',12,1,1);
INSERT INTO "django_admin_log" VALUES (15,'2022-03-19 19:23:01.874580','1','Lenguajes object (1)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (16,'2022-03-19 19:23:19.852242','2','Lenguajes object (2)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (17,'2022-03-19 19:23:37.401873','3','Lenguajes object (3)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (18,'2022-03-19 19:24:47.541115','4','Lenguajes object (4)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (19,'2022-03-19 19:25:10.650337','5','Lenguajes object (5)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (20,'2022-03-19 19:25:30.686514','6','Lenguajes object (6)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (21,'2022-03-19 19:27:05.310805','7','Lenguajes object (7)','[{"added": {}}]',11,1,1);
INSERT INTO "django_admin_log" VALUES (22,'2022-03-19 22:14:56.128962','1','Lenguajes object (1)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (23,'2022-03-19 22:16:30.763736','2','Lenguajes object (2)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (24,'2022-03-19 22:17:05.152414','3','Lenguajes object (3)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (25,'2022-03-19 22:17:26.855395','4','Lenguajes object (4)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (26,'2022-03-19 22:18:43.532587','5','Lenguajes object (5)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (27,'2022-03-19 22:19:07.010137','6','Lenguajes object (6)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (28,'2022-03-19 22:19:20.616007','7','Lenguajes object (7)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (29,'2022-03-19 22:25:05.279005','6','Lenguajes object (6)','[{"changed": {"fields": ["Imagen"]}}]',11,1,2);
INSERT INTO "django_admin_log" VALUES (30,'2022-03-19 22:30:17.672000','1','Frameworks object (1)','[{"changed": {"fields": ["Imagen"]}}]',12,1,2);
INSERT INTO "django_admin_log" VALUES (31,'2022-03-19 22:30:37.699687','2','Frameworks object (2)','[{"changed": {"fields": ["Imagen"]}}]',12,1,2);
INSERT INTO "django_admin_log" VALUES (32,'2022-03-19 22:30:57.567419','3','Frameworks object (3)','[{"changed": {"fields": ["Imagen"]}}]',12,1,2);
INSERT INTO "django_admin_log" VALUES (33,'2022-03-19 22:31:17.553465','4','Frameworks object (4)','[{"changed": {"fields": ["Imagen"]}}]',12,1,2);
INSERT INTO "django_admin_log" VALUES (34,'2022-03-19 22:31:32.876366','5','Frameworks object (5)','[{"changed": {"fields": ["Imagen"]}}]',12,1,2);
INSERT INTO "django_admin_log" VALUES (35,'2022-03-19 22:47:16.115686','1','Cms object (1)','[{"changed": {"fields": ["Imagen"]}}]',13,1,2);
INSERT INTO "django_admin_log" VALUES (36,'2022-03-19 22:47:24.337202','2','Cms object (2)','[{"changed": {"fields": ["Imagen"]}}]',13,1,2);
INSERT INTO "django_admin_log" VALUES (37,'2022-03-19 23:26:15.622572','1','Post object (1)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (38,'2022-03-19 23:27:36.101552','2','Post object (2)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (39,'2022-03-19 23:29:13.828280','3','Post object (3)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (40,'2022-03-19 23:30:19.422470','4','Post object (4)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (41,'2022-03-19 23:31:53.810491','5','Post object (5)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (42,'2022-03-19 23:33:14.232089','6','Post object (6)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (43,'2022-03-19 23:34:24.823633','7','Post object (7)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (44,'2022-03-19 23:35:17.457394','8','Post object (8)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (45,'2022-03-20 01:34:15.185522','9','Post object (9)','[{"added": {}}]',7,1,1);
INSERT INTO "django_admin_log" VALUES (46,'2022-03-20 01:38:53.792783','9','Post object (9)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (47,'2022-03-20 01:41:07.271440','1','Post object (1)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (48,'2022-03-20 01:42:33.801190','9','Post object (9)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (49,'2022-03-20 01:42:41.484503','8','Post object (8)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (50,'2022-03-20 01:42:48.040144','7','Post object (7)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (51,'2022-03-20 01:43:04.335379','6','Post object (6)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (52,'2022-03-20 01:43:36.316799','5','Post object (5)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (53,'2022-03-20 01:43:54.288194','4','Post object (4)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (54,'2022-03-20 01:44:17.338232','3','Post object (3)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_admin_log" VALUES (55,'2022-03-20 01:44:38.625715','2','Post object (2)','[{"changed": {"fields": ["Imagen empresa"]}}]',7,1,2);
INSERT INTO "django_content_type" VALUES (1,'admin','logentry');
INSERT INTO "django_content_type" VALUES (2,'auth','permission');
INSERT INTO "django_content_type" VALUES (3,'auth','group');
INSERT INTO "django_content_type" VALUES (4,'auth','user');
INSERT INTO "django_content_type" VALUES (5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES (6,'sessions','session');
INSERT INTO "django_content_type" VALUES (7,'blog','post');
INSERT INTO "django_content_type" VALUES (8,'portfolio','proyect');
INSERT INTO "django_content_type" VALUES (9,'academico','academico');
INSERT INTO "django_content_type" VALUES (10,'empresas','empresas');
INSERT INTO "django_content_type" VALUES (11,'lenguajes','lenguajes');
INSERT INTO "django_content_type" VALUES (12,'frameworks','frameworks');
INSERT INTO "django_content_type" VALUES (13,'cms','cms');
INSERT INTO "auth_permission" VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES (4,1,'view_logentry','Can view log entry');
INSERT INTO "auth_permission" VALUES (5,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES (6,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES (7,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES (8,2,'view_permission','Can view permission');
INSERT INTO "auth_permission" VALUES (9,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES (10,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES (11,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES (12,3,'view_group','Can view group');
INSERT INTO "auth_permission" VALUES (13,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES (14,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES (15,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES (16,4,'view_user','Can view user');
INSERT INTO "auth_permission" VALUES (17,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES (18,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES (19,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES (20,5,'view_contenttype','Can view content type');
INSERT INTO "auth_permission" VALUES (21,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES (22,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES (23,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES (24,6,'view_session','Can view session');
INSERT INTO "auth_permission" VALUES (25,7,'add_post','Can add post');
INSERT INTO "auth_permission" VALUES (26,7,'change_post','Can change post');
INSERT INTO "auth_permission" VALUES (27,7,'delete_post','Can delete post');
INSERT INTO "auth_permission" VALUES (28,7,'view_post','Can view post');
INSERT INTO "auth_permission" VALUES (29,8,'add_proyect','Can add proyect');
INSERT INTO "auth_permission" VALUES (30,8,'change_proyect','Can change proyect');
INSERT INTO "auth_permission" VALUES (31,8,'delete_proyect','Can delete proyect');
INSERT INTO "auth_permission" VALUES (32,8,'view_proyect','Can view proyect');
INSERT INTO "auth_permission" VALUES (33,9,'add_academico','Can add academico');
INSERT INTO "auth_permission" VALUES (34,9,'change_academico','Can change academico');
INSERT INTO "auth_permission" VALUES (35,9,'delete_academico','Can delete academico');
INSERT INTO "auth_permission" VALUES (36,9,'view_academico','Can view academico');
INSERT INTO "auth_permission" VALUES (37,10,'add_empresas','Can add empresas');
INSERT INTO "auth_permission" VALUES (38,10,'change_empresas','Can change empresas');
INSERT INTO "auth_permission" VALUES (39,10,'delete_empresas','Can delete empresas');
INSERT INTO "auth_permission" VALUES (40,10,'view_empresas','Can view empresas');
INSERT INTO "auth_permission" VALUES (41,11,'add_lenguajes','Can add lenguajes');
INSERT INTO "auth_permission" VALUES (42,11,'change_lenguajes','Can change lenguajes');
INSERT INTO "auth_permission" VALUES (43,11,'delete_lenguajes','Can delete lenguajes');
INSERT INTO "auth_permission" VALUES (44,11,'view_lenguajes','Can view lenguajes');
INSERT INTO "auth_permission" VALUES (45,12,'add_frameworks','Can add frameworks');
INSERT INTO "auth_permission" VALUES (46,12,'change_frameworks','Can change frameworks');
INSERT INTO "auth_permission" VALUES (47,12,'delete_frameworks','Can delete frameworks');
INSERT INTO "auth_permission" VALUES (48,12,'view_frameworks','Can view frameworks');
INSERT INTO "auth_permission" VALUES (49,13,'add_cms','Can add cms');
INSERT INTO "auth_permission" VALUES (50,13,'change_cms','Can change cms');
INSERT INTO "auth_permission" VALUES (51,13,'delete_cms','Can delete cms');
INSERT INTO "auth_permission" VALUES (52,13,'view_cms','Can view cms');
INSERT INTO "auth_user" VALUES (1,'pbkdf2_sha256$320000$ENKdp7E8BL26WSHEVWuWph$qUHgeZXPAr5rv8/UqNnkGFYMUEkl/XbZEN0mPHNUA+0=','2022-03-19 16:32:30.587150',1,'kc','','',1,1,'2022-03-19 16:32:04.974039','');
INSERT INTO "empresas_empresas" VALUES (1,'MicroTec','-Desarrollo de Páginas web 
-Desarrollo de Aplicaciones moviles hibridas con Cordova Apache
-Administración de Sitios','Programador Web','empresas/images/Microtec.jpg','2015-04-10','2015-10-01');
INSERT INTO "empresas_empresas" VALUES (2,'DQBICA','-Participar en el desarrollo de un sistema desarrollado en Laravel
-Creación de Módulos específicos','Programador Web','empresas/images/SIN-IMAGEN.jpg','2017-11-15','2018-09-10');
INSERT INTO "empresas_empresas" VALUES (3,'Profeti Consultores','-Desarrollo de Sistema con CMS Joomla
-Desarrollo de ERM con CodeIgniter
-Participación en mantenimientos de sistemas en Java
-Participación como outsourcing para universidad Privada
-Participación en aplicación movil
-Participación a mantenimiento de sistema web en WordPress','Programador Web','empresas/images/profeti.jpg','2018-09-11','2019-10-10');
INSERT INTO "empresas_empresas" VALUES (4,'Nerü Psicologia','-Creación de aplicación móvil hibrida en cordova 
-Creación de dashboard para la administración de aplicación','Desarrollador Web','empresas/images/neru.jpg','2019-10-09','2020-04-12');
INSERT INTO "empresas_empresas" VALUES (5,'Financiera Súmate','-Creación de ERM en .NET
-Creación de programa en WindowsForms
-Soporte técnico a sucursales
-Soporte al Cord Financiero
-Creación de Pagina web
-Soporte y análisis a desarrollo de programas de la misma institución','Ejecutivo Desarrollador Web','empresas/images/Sumate.jpeg','2019-10-24','2022-03-15');
INSERT INTO "django_session" VALUES ('jgpfbgm55u569f27xtnm4wvao2m5bist','.eJxVjDsOwjAQBe_iGllx1o5jSnrOYK33gwMokfKpEHeHSCmgfTPzXibjtta8LTLngc3ZOHP63QrSQ8Yd8B3H22RpGtd5KHZX7EEXe51YnpfD_TuouNRvDeKURZ2PHj0pCrbAAVoFCBRV-yYUbtipBknca2TqOlJoUoLkKZj3BxDvONM:1nVc0E:NaIC8mcelFYW-0k8PXyK8eMSvoDewucY9gl9ikqVhYM','2022-04-02 16:32:30.595554');
INSERT INTO "lenguajes_lenguajes" VALUES (1,'Html','Intermedio','2015-04-01','html.png');
INSERT INTO "lenguajes_lenguajes" VALUES (2,'JavaScript','Intermedio','2015-04-01','js.png');
INSERT INTO "lenguajes_lenguajes" VALUES (3,'PHP','Intermedio','2015-04-01','php.png');
INSERT INTO "lenguajes_lenguajes" VALUES (4,'Python','Basico','2022-03-12','python.png');
INSERT INTO "lenguajes_lenguajes" VALUES (5,'Java','Basico','2018-03-12','java.jpg');
INSERT INTO "lenguajes_lenguajes" VALUES (6,'C#','Basico-Intermedio','2019-10-30','cshar.jpg');
INSERT INTO "lenguajes_lenguajes" VALUES (7,'SQL','Intermedio','2016-10-10','sql.png');
INSERT INTO "frameworks_frameworks" VALUES (1,'Laravel','Laravel 5.5
Laravel 8.0','2017-11-18','laravel.jpg');
INSERT INTO "frameworks_frameworks" VALUES (2,'Bootstrap','-v4
-v5','2016-10-10','Bootstrap.png');
INSERT INTO "frameworks_frameworks" VALUES (3,'Angular','v11','2020-12-01','angular.png');
INSERT INTO "frameworks_frameworks" VALUES (4,'React JS','React','2021-12-01','react.png');
INSERT INTO "frameworks_frameworks" VALUES (5,'Django','Django','2022-01-01','django.png');
INSERT INTO "cms_cms" VALUES (1,'WordPress','Participando en la creacion de modulos e implementacion de Plugins','2022-03-18','wordpress.png');
INSERT INTO "cms_cms" VALUES (2,'Joomla','Participación en módulos','2022-03-19','joomla.png');
INSERT INTO "blog_post" VALUES (1,'MicroFranquicias','Aplicación de pagos de servicios desarrollada en Cordova Phonegap','blog/images/Microtec.jpg','2016-10-10','Microtec.jpg');
INSERT INTO "blog_post" VALUES (2,'Registro de Posición','Aplicación Web en la cual se registraban las rutas que hacian los vendedores a traves de la aplicación movil','blog/images/Microtec_CKf2dRZ.jpg','2016-10-10','Microtec.jpg');
INSERT INTO "blog_post" VALUES (3,'Socios Laravel','Sistema el cual  se utilizo para el control de club de golf privado para el control y administración , mi participacion es el desarrollo del modulo de entradas al club','blog/images/SIN-IMAGEN.jpg','2018-11-18','SIN-IMAGEN.jpg');
INSERT INTO "blog_post" VALUES (4,'CREM','CRM desarrollado en CodeIgniter para una ferreteria','blog/images/SIN-IMAGEN_5BE9M2w.jpg','2019-05-18','profeti.jpg');
INSERT INTO "blog_post" VALUES (5,'App Nerü','Aplicacion para el rendimiento deportivo con consejos para el rendimiento total en deportistas','blog/images/neru.jpg','2020-01-01','neru.jpg');
INSERT INTO "blog_post" VALUES (6,'CarWash','Aplicacion desarrollada en XamarinForms la cual solicita a un Washer el lavado de tu automovil a domicilio','blog/images/SIN-IMAGEN_j7qQNCE.jpg','2020-05-01','neru.jpg');
INSERT INTO "blog_post" VALUES (7,'Comite','Pagina desarrollada en .NET para la administracion de comites realizados en la institución','blog/images/SIN-IMAGEN_guKWl6F.jpg','2020-12-01','Sumate.jpeg');
INSERT INTO "blog_post" VALUES (8,'Página Web','Página desarrollada en Laravel 8 con su respectivo Dashboard para su administración Personalizada','blog/images/Sumate.jpeg','2022-03-12','Sumate.jpeg');
INSERT INTO "blog_post" VALUES (9,'SumaCheck','Aplicación en WindowsForms registra a traves de QR la asistencia del personal y tomaa la foto como comprobante de asistencia','blog/images/Sumate_kqW3MiU.jpeg','2020-03-19','Sumate.jpeg');
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
COMMIT;
