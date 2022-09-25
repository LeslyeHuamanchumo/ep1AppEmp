create table Clientes (
	id int,
	name varchar(255),
	lastname varchar(255),
	codRes char(10),
	nroTel varchar(9),
	email varchar(255),
	nroDoc varchar(20)
)

alter table Clientes add primary key (id);

ALTER TABLE reserva.clientes MODIFY COLUMN id int auto_increment NOT NULL;

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Sofía', 'Carrión','1085423236','965325874','sof.carrion@gmail.com','45236987');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Renzo', 'Savala','1115423230','900325873','rencito@gmail.com','42196985');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Morten', 'Jensen','8712423540','923325811','morten.bj@gmail.com','12696986');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Lorena', 'Morales','9912423540','943325511','loren1987.bj@gmail.com','40096986');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Fiorella', 'Diaa','9332423545','943225500','fiore5.5@gmail.com','45296980');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Pablo', 'guerra','1302423500','943252140','pablillo@gmail.com','63296980');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Marta', 'Cullen','1115423230','903252477','cullen@gmail.com','62296980');

insert into Clientes (name,lastname,codRes,nroTel,email,nroDoc)
values ('Aaron', 'Alfageme','1115423230','911252477','aa.g@gmail.com','61006980');

select * from Clientes

/* Procedimiento almacenado */

CREATE PROCEDURE listarClientesPerCodRes(IN p_codRes char(10))

       begin

	       select * from Clientes where codRes = p_codRes;

	   end

call listarClientesPerCodRes(1115423230);

/* Actualizar */
UPDATE Clientes SET name='Julio' WHERE id = 2;

/* Eliminar */
DELETE FROM Clientes WHERE name='Julio';