CREATE or alter FUNCTION fnSiNo 
(
	@valore bit,
	@lang varchar(2) = 'it'
)
RETURNS varchar(3)
AS
BEGIN
	
	RETURN case
		when @valore = 1 then 
			case
				when @lang = 'it' then 'Sì'
				when @lang = 'en' then 'Yes'
				else 'Oui'
			end
		when @valore = 0 then case
				when @lang = 'it' then 'No'
				when @lang = 'en' then 'No'
				else 'Niet'
			end
	end

END
GO

