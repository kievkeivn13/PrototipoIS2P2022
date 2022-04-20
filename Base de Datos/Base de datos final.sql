create database hotelsancarlos;
-- USE hotelSanCarlos;

-- ------------------------------------------------------------------------------------------------------------
-- 	COMPONENTE SEGURIDAD
-- ------------------------------------------------------------------------------------------------------------
CREATE TABLE empleado (
	pkIdEmpleado VARCHAR(15) PRIMARY KEY,
	nombre VARCHAR(45) NOT NULL,
	apellido VARCHAR(45) NOT NULL,
	fechaDeNacimiento VARCHAR(45) NOT NULL,
	sueldo FLOAT NOT NULL,
	correo VARCHAR(45) NOT NULL,
	direccion VARCHAR(45) NOT NULL,
	contratado VARCHAR(45) NOT NULL,
	añosDeExperiencia INT NOT NULL,
	telefono VARCHAR(10) NOT NULL,
    fechaContratacion DATE NOT NULL,
	finDeContrato DATE NOT NULL,
	fkIdPuesto VARCHAR(15) NOT NULL,
	fkIdEmpresa VARCHAR(15) NOT NULL,
    estado varchar(1) not null,
  
	FOREIGN KEY (fkIdPuesto) REFERENCES puesto (pkIdPuesto),
	FOREIGN KEY (fkIdEmpresa) REFERENCES empresa (IdEmpresa)
  )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE usuario(
	pkId VARCHAR(15) PRIMARY KEY,
	fkIdEmpleado varchar(15) NOT NULL, 
	nombre VARCHAR(30) NOT NULL,
	contraseña VARCHAR(100) NOT NULL,
	estado VARCHAR(1) NOT NULL,
	
	FOREIGN KEY (fkIdEmpleado) REFERENCES empleado(pkIdEmpleado)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------------------------------------------------------------
-- 	PoliDeportivo Tablas Generales 
-- ------------------------------------------------------------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrenador`
--

CREATE TABLE tipodeportePoli (
 pkId varchar(15) primary key,
 nombre varchar(45) not NULL,
 estado varchar(1) not null
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE sedePoli (
  pkId varchar(15) primary key,
  nombre varchar(45) not NULL,
  cantidad varchar (11) DEFAULT NULL,
  estado varchar(1) not null
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE campeonatoPoli (
  pkId varchar(15) primary key,
  nombre varchar(45) DEFAULT NULL,
  cantidad varchar (11) DEFAULT NULL,
  fkIdSede varchar(15) NOT NULL, 
  estado varchar(1) not null,
  FOREIGN KEY (fkIdSede) REFERENCES SedePoli(pkId)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE entrenadorPoli (
  pkId varchar(15) primary key,
  nombre varchar(45) DEFAULT NULL,
  fechaNacimineto date DEFAULT NULL,
  direccion VARCHAR(45) NOT NULL,
  telefono VARCHAR(11) NOT NULL,
  estado varchar(1) not null

  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE equipoPoli (
  pkId varchar(15) primary key,
  nombre varchar(50) DEFAULT NULL,
  fkIdEntrenador varchar(15) NOT NULL,
  fkIdTipodeporte varchar(15) NOT NULL,
  trofeosGanados varchar(11) DEFAULT NULL,
  estado varchar(1) not null,
  FOREIGN KEY (fkIdEntrenador) REFERENCES entrenadorPoli(pkId),
  FOREIGN KEY (fkIdTipodeporte) REFERENCES tipodeportePoli(pkId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE jugadorPoli (
  pkId varchar(15) primary key,
  nombre varchar(50) DEFAULT NULL,
  fechaNacimineto date DEFAULT NULL,
  fkIdEquipo varchar(15) NOT NULL,
  estado varchar(1) not null,
 FOREIGN KEY (fkIdEquipo) REFERENCES equipoPoli(pkId)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

