
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='7company' and spd.designation='Software Developer'
		and to_date >= '2092-12-20 14:14:41' and from_date <= '2094-08-17 14:33:29'
