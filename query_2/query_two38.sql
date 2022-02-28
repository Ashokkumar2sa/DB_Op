
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='13company' and spd.designation='Engineer'
		and to_date >= '2069-10-10 18:38:59' and from_date <= '2095-02-05 21:09:50'
