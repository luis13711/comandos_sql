alter procedure pa_eliminar_usuario 
@id int
as
begin
delete from dbo.usuarios 
where id = @id
end