USE [TEST]

create procedure proc_insertar_usuario2 --Creación de Procedimiento
@id int,
@nombre varchar(255),
@pass varchar(255)
as
if (@id = 0)
begin
insert into dbo.usuarios values(@nombre,@pass);
end
else
begin
update dbo.usuarios 
set nombre = @nombre,
pass = @pass
where id = @id
end