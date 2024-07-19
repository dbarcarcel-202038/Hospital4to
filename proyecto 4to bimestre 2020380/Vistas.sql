Create View vista_cliente AS
Select id_cliente AS ID, nombre AS Nombre, apellido AS Apellido, telefono AS Telefono, email AS Email from tbl_cliente;
select * from vista_cliente;

describe tbl_cliente;

describe tbl_doctor;

Create View vista_doctor AS
Select id_doctor AS ID, nombre AS Nombre, apellido AS Apellido, telefono AS Telefono, especialidad ASEspecialidad, colegiado as Colegiado, estado As Estado, id_direccion AS IDd from tbl_doctor;
select * from vista_doctor;

describe tbl_direccion;

Create View vista_direccion AS
Select id_direccion AS ID, direccion AS Direccion from tbl_direccion;
select * from vista_direccion;

describe tbl_cita;

Create View vista_cita AS
Select id_cita AS ID, fecha AS Fecha, hora AS Hora, id_mascota AS Mascota, id_cliente AS Cliente, costo as Costo from tbl_cita;
select * from vista_cita;

describe tbl_mascota;

Create View vista_mascota AS
Select id_mascota AS ID, nombre AS Nombre, raza AS Raza, edad As Edad, sexo As Sexo from tbl_mascota;
select * from vista_mascota;