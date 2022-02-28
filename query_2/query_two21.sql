
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='7company' and spd.designation='Engineer'
		and to_date >= '2066-06-10 06:52:02' and from_date <= '2098-07-31 05:55:03'
