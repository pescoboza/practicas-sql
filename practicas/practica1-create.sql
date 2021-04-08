
CREATE TABLE EMPLEADO(
	RFC VARCHAR(13) NOT NULL,
	nombre VARCHAR(20),
	apellidoP VARCHAR(20),
	apellidoM VARCHAR(20),
	fechaNac DATE,
	calle VARCHAR(30),
	colonia VARCHAR(30),
	ciudad VARCHAR(30),
	sexo CHAR(1),
	salario DECIMAL(5,2),
	RFCSupervisor VARCHAR(13),
	numDepto TINYINT,
	PRIMARY KEY(RFC),
	FOREIGN KEY(RFCSupervisor) REFERENCES Empleado(RFC),
);
CREATE TABLE DEPARTAMENTO(
	numDepto TINYINT PRIMARY KEY NOT NULL,
	nombreDepto VARCHAR(20),
	rfcAdmin VARCHAR(13),
	fechaInicioAdmin DATE,
	FOREIGN KEY(rfcAdmin) REFERENCES EMPLEADO(RFC),
);
CREATE TABLE PROYECTO(
	numProy INT PRIMARY KEY NOT NULL,
	nombreProy VARCHAR(30),
	ubicacionProy VARCHAR(30),
	numDep TINYINT,
	FOREIGN KEY(numDep) REFERENCES DEPARTAMENTO(NumDepto),
);

CREATE TABLE LOCALIZACION_DEP(
	numDepto TINYINT NOT NULL,
	localizacionDep VARCHAR(30) NOT NULL,
	CONSTRAINT [localizacionDep_PK] PRIMARY KEY CLUSTERED([numDepto],[localizacionDep]),
	FOREIGN KEY(numDepto) REFERENCES DEPARTAMENTO(NumDepto)
);CREATE TABLE TRABAJA_EN(
	rfc VARCHAR(13) NOT NULL,
	numProy INT NOT NULL,
	horas INT,
	CONSTRAINT [Trabaja_en_PK] Primary Key CLUSTERED ([rfc],[numProy]),
	FOREIGN KEY(rfc) REFERENCES EMPLEADO(rfc),
	FOREIGN KEY(numProy) REFERENCES PROYECTO(numProy),
);
CREATE TABLE DEPENDIENTE(
	rfc VARCHAR(13) NOT NULL,
	nombreDep VARCHAR(30) NOT NULL,
	sexo CHAR(1),
	fechaNac DATE,
	parentesco VARCHAR(20),
	CONSTRAINT [dependiente_PK] Primary Key CLUSTERED ([rfc],[nombreDep]),
	FOREIGN KEY(rfc) REFERENCES EMPLEADO(rfc),
);
-- Modifiquemos  la  tabla  Empleados  agregando  la  llave  foránea  numDep,  ejecuta   -- siguiente comando:
ALTER TABLE Empleado ADD FOREIGN KEY(numDepto) REFERENCES departamento(numDepto);-- Cambio de tipo de dato de la columna parentesco
ALTER TABLE DEPENDIENTE ALTER COLUMN parentesco INT;
-- Eliminar columna de parentesco
ALTER TABLE DEPENDIENTE DROP COLUMN parentesco;
-- Agregar nuevamnete la columna parentesco
ALTER TABLE DEPENDIENTE ADD parentesco VARCHAR(20);