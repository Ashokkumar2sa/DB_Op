
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='15company' and spd.designation='Accountant'
		and to_date >= '2083-04-01 03:11:59' and from_date <= '2098-01-03 18:18:41'
