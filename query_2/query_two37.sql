
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='5company' and spd.designation='Analyst'
		and to_date >= '2026-09-06 01:31:39' and from_date <= '2082-01-11 11:16:09'
