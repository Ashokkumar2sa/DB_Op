
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='7company' and spd.designation='Analyst'
		and to_date >= '2093-12-07 00:52:05' and from_date <= '2099-12-18 20:10:31'
