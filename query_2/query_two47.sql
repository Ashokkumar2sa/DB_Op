
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='13company' and spd.designation='Accountant'
		and to_date >= '2057-01-04 20:49:35' and from_date <= '2058-12-16 23:48:25'
