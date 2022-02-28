
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='13company' and spd.designation='Software Developer'
		and to_date >= '2059-03-09 10:43:39' and from_date <= '2082-07-08 10:35:30'
