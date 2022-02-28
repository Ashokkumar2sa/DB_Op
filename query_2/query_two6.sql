
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='8company' and spd.designation='Project Manager'
		and to_date >= '2005-10-22 00:45:40' and from_date <= '2037-11-23 13:39:15'
