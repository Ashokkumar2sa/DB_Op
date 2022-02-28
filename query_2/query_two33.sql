
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='1company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2052-02-09 22:40:46' and from_date <= '2076-01-29 03:34:01'
