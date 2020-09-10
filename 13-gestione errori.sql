declare @var1 int

set @var1 = 0
inizio:
begin try
	print (10 / @var1)
	set @var1 = cast('a' as int)
end try
begin catch
	if ERROR_NUMBER() = 8134
	begin
		set @var1 = @var1 + 1
		goto inizio
	end

	select ERROR_NUMBER(),
	ERROR_SEVERITY(),
	ERROR_STATE(),
	ERROR_PROCEDURE(),
	ERROR_LINE(),
	ERROR_MESSAGE()
end catch

print 'finito'