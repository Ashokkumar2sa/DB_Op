
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='8company' and spd.designation='Project Manager'
		and to_date >= '2000-08-23 01:21:50' and from_date <= '2002-10-18 03:06:24'
