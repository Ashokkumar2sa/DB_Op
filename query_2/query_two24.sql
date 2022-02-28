
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='1company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2001-10-23 21:40:31' and from_date <= '2078-08-22 05:19:15'
