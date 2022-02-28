
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='8company' and spd.designation='Software Developer'
		and to_date >= '2028-08-29 10:18:18' and from_date <= '2084-09-01 20:46:31'
