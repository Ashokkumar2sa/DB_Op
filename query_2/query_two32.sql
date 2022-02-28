
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='3company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2006-06-27 16:33:57' and from_date <= '2050-11-13 03:01:22'
