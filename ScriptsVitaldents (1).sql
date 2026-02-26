Create database VitalDents;
use VitalDents;

create table Rol ( 
  id_Rol INT auto_increment,
  descripcion_rol varchar(45) NOT NULL,
  primary key (id_Rol)
  );
 

  
create table Usuario (
   id_Usuario INT auto_increment,
   nombreus varchar(45) NOT NULL,
   contraseña varchar(45) NOt NULL,
   correousuario varchar(45) NOT NULL, 
   id_Rol INT NOT NULL,
   primary key (id_Usuario),
   FOREIGN KEY (id_Rol) REFERENCES Rol(id_rol)
   ); 
   
   create table Paciente ( 
	id_Paciente INT auto_increment,
    nombrepaciente varchar(45) NOT NULL, 
    documento varchar(15) NOT NULL, 
    telefono varchar(45) NOT NULL,
    correo varchar(45),
    id_Tipodocumento INT NOT NULL,
    primary key (id_Paciente), 
    foreign key (id_Tipodocumento) references Tipo_documento(id_Tipodocumento)
    );
    
    create table Tipo_documento (
    id_Tipodocumento INT auto_increment,
    descripcion_tipodoc varchar(45) NOT NULL, 
    PRIMARY KEY (id_Tipodocumento)
    );
    
    create table Medio_pago (
    id_Mediodepago INT auto_increment,
    descripcion_mediopa varchar(45) NOT NULL, 
    PRIMARY KEY (id_Mediodepago)
    );
    
    create table Estado_pago (
    id_Estadopago INT auto_increment,
    descripcion_estadop varchar(45) NOT NULL, 
    PRIMARY KEY (id_Estadopago)
    );
    
    create table Tipo_Tratamiento (
    id_Tipotratam INT auto_increment,
    descripcion_tipotratam varchar(45) NOT NULL, 
    costo decimal(10,2) NOT NULL,
    primary key (id_Tipotratam)
    );
    
    create table Estado_cita (
    id_Estadocita INT auto_increment,
    descripcion_estadoci varchar(45) NOT NULL, 
    primary key (id_Estadocita)
    ); 
    
    create table Cita (
    id_Cita INT auto_increment,
    fecha_hora datetime NOT NULL, 
    descripcion_cita varchar(45) NOT NULL,
    id_Paciente INT NOT NULL,
    id_Usuario INT NOT NULL,
    id_Estadocita INT NOT NULL,
    id_tipotratam INT NOT NULL,
    primary key (id_Cita),
    foreign key (id_Paciente) references Paciente(id_Paciente),
    foreign key (id_Usuario) references Usuario(id_Usuario),
    foreign key (id_Estadocita) references Estado_cita(id_Estadocita),
    foreign key (id_Tipotratam) references Tipo_Tratamiento(id_Tipotratam)
    );
    
    create table Pago (
    id_Pago INT auto_increment,
    monto decimal(10,2) NOT NULL,
    id_Mediodepago INT NOT NULL,
    id_Estadopago INT NOT NULL,
    id_Cita INT NOT NULL,
    PRIMARY KEY (id_pago),
    foreign key (id_Mediodepago) references Medio_pago(id_Mediodepago),
    foreign key (id_Estadopago) references Estado_pago(id_Estadopago), 
    foreign key (id_Cita) references Cita(id_Cita)
    );
    
    
    
    
    
      
   
   