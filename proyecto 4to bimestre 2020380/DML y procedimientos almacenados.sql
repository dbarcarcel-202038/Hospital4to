-- CLIENTE---------------------------------------
DELIMITER //
      create procedure sp_agregarcliente(
      in _nombre varchar (30),
      in _apellido varchar (30),
      in _telefono varchar (30),
      in _email varchar(30))
      begin
      insert into tbl_cliente(
      nombre,
      apellido,
      telefono,
      email)
      values (_nombre, _apellido, _telefono, _email);
      end //
      DELIMITER ;
      
	insert into tbl_cliente (id_cliente, nombre, apellido, telefono, email)
	values(1, 'Juan Manuel', 'Pérez Balcarcel', '12478965', 'barcarcel069@gmail.com');
	select * from tbl_cliente;
      
    call sp_agregarcliente('Juan Manuel', 'Pérez Balcarcel', '12478965', 'barcarcel018@gmail.com');
      
      DELIMITER //
	create procedure sp_actualizarCliente(
	in _id int,
	in _nombre varchar(30),
	in _apellido varchar(30),
	in _telefono varchar(30),
	in _email varchar(30))
	begin
	update tbl_cliente
	set id_cliente = _id, nombre = _nombre, apellido = _apellido, telefono = _telefono, email = _email
	where id_cliente = _id;
	END //
DELIMITER ;

    call sp_actualizarCliente (1, 'Juan Manuel', 'Pérez Balcarcel', '12478965', 'barcarcel69@gmail.com');
    
    DELIMITER //
create procedure Eliminar_Cliente(_id_cliente int)
begin
delete from tbl_cliente where id_cliente = _id_cliente;
end //
DELIMITER ;

    Call Eliminar_Cliente(2);
    
DELIMITER //
create procedure sp_mostrarCliente()
begin
select * from tbl_cliente;
end // 
DELIMITER ;

call sp_mostrarCliente();
    
      select * from tbl_cliente;
     -- CLIENTE-------------------------------------------------
     
     
     -- DOCTOR---------------------------------------
     DELIMITER //
      create procedure sp_agregarDoctor(
      in _nombre varchar (30),
      in _apellido varchar (30),
      in _telefono varchar (30),
      in _especialidad varchar(30),
      in _colegiado varchar(15),
      in _estado boolean,
      in _id_direccion int)
      begin
      insert into tbl_doctor(
      nombre,
      apellido,
      telefono,
      especialidad,
      Colegiado,
      estado,
      id_direccion)
      values (_nombre, _apellido, _telefono,_especialidad, _colegiado, _estado, _id_direccion);
      end //
      DELIMITER ;
      

      
	insert into tbl_doctor (id_doctor, nombre, apellido, telefono, especialidad, Colegiado, estado, id_direccion)
	values(1, 'Balcarcel Martinez', 'Santos Escobar', '55769875', 'Operacion','Usac',true,'1');
	select * from tbl_doctor;
    
     call sp_agregarDoctor('Balcarcel Martinez', 'Santos Escobar', '55769875', 'Operacion','Usac',true,'1');
     
    
        DELIMITER //
	create procedure sp_actualizarDoctor(
      in _id int,
	  in _nombre varchar (30),
      in _apellido varchar (30),
      in _telefono varchar (30),
      in _especialidad varchar(30),
      in _colegiado varchar(15),
      in _estado boolean,
      in _direccion int)
	begin
	update tbl_doctor
	set id_doctor = _id, nombre = _nombre, apellido = _apellido, telefono = _telefono, especialidad = _especialidad, Colegiado = _colegiado, estado = _estado, id_direccion = _direccion where id_doctor = _id;
	END //
DELIMITER ;

call sp_actualizarDoctor(1, 'Balcarcel Martinez', 'Santos Escobar', '55769875', 'Operacion','Usac',false,'1');


select * from tbl_doctor;


DELIMITER //
create procedure Eliminar_Doctor(_id_doctor int)
begin
delete from tbl_doctor where id_doctor = _id_doctor;
end //
DELIMITER ;
Call Eliminar_Doctor(2);



DELIMITER //
create procedure sp_mostrarDoctor()
begin
select * from tbl_doctor;
end // 
DELIMITER ;

call sp_mostrarDoctor();

-- DOCTOR--------------------------------------------

-- MASCOTA-----------------------------------------------------------


describe tbl_mascota;

DELIMITER //
create procedure sp_agregarMascota(nombre varchar(30), raza varchar(30), edad varchar(10), sexo varchar(10))
begin
insert into tbl_mascota(nombre, raza, edad, sexo)
values(nombre,raza, edad, sexo);
end //
DELIMITER ;

insert into tbl_mascota(id_mascota, nombre,raza,edad,sexo)
values(1, 'Canela', 'Chiguagua','20','M');
select * from tbl_mascota;
call sp_agregarMascota('Canela', 'Chiguagua','40','F');

DELIMITER //
	create procedure sp_actualizarMascota(
	in _id int,
	 in _nombre varchar(30),
      in _raza varchar (30),
      in _edad varchar (10),
      in _sexo varchar (10))
	begin
	update tbl_mascota
	set id_mascota = _id, nombre = _nombre, raza = _raza, edad = _edad, sexo = _sexo
	where id_mascota = _id;
	END //
DELIMITER ;

call sp_actualizarMascota(1, 'Coco', 'Chiguagua','20','M');

DELIMITER //
create procedure Eliminar_Mascota(_id_mascota int)
begin
delete from tbl_mascota where id_mascota = _id_mascota;
end //
DELIMITER ;
  Call Eliminar_Mascota(1);
  
DELIMITER //
create procedure sp_mostrarMascota()
begin
select * from tbl_mascota;
end // 
DELIMITER ;

call sp_mostrarMascota();

-- MASCOTA-----------------------------------------------------------


-- DIRECCION------------------------------------------------
insert into tbl_direccion (id_direccion,direccion)
	values(1, '10 calle 9-69 zona 7');
	select * from tbl_direccion;
    
    -- DIRECCION----------------------------------------------
    
    -- CITAS--------------------------------------------
    DELIMITER //
      create procedure sp_agregarCita(
      in _fecha date,
      in _hora varchar (30),
      in _id_mascota varchar (30) ,
      in _id_cliente varchar (30),
      in _costo float)
      begin
      insert into tbl_cita(
      fecha,
      hora,
      id_mascota,
      id_cliente,
      costo)
      values (_fecha, _hora, _id_mascota, _id_cliente,_costo);
      end //
      DELIMITER ;
      
    insert into tbl_cita (id_cita, fecha, hora, id_mascota, id_cliente, costo)
	values(1, '2022-06-19', '12:00', '1', '1','50');
	select * from tbl_cita;
    call  sp_agregarCita('2022-04-19', '22:00', '1', '1','1000');
    
      DELIMITER //
	create procedure sp_actualizarCita(
	in _id int,
	in _fecha date,
	in _hora varchar (30),
	in _id_mascota varchar (30) ,
	in _id_cliente varchar (30),
	in _costo float)
	begin
	update tbl_cita
	set id_cita = _id, fecha = _fecha, hora = _hora, id_mascota = _id_mascota, id_cliente = _id_cliente, costo = _costo
	where id_cita = _id;
	END //
DELIMITER ;

call sp_actualizarCita (1, '2022-06-19', '24:00', '2', '1','100');


DELIMITER //
create procedure Eliminar_Cita(_id_cita int)
begin
delete from tbl_cita where id_cita = _id_cita;
end //
DELIMITER ;
select * from tbl_cita;

Call Eliminar_Cita(1);

Delimiter //
create procedure sp_mostrarCita()
begin
select * from tbl_cita;
end //
Delimiter ;

call sp_mostrarCita();
-- CITAS------------------------------------------------------



