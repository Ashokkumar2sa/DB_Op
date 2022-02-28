
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='12company' and spd.designation='Software Developer'
		and to_date >= '2022-08-16 12:02:09' and from_date <= '2030-03-11 06:25:12'
