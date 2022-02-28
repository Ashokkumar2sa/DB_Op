
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='3company' and spd.designation='Analyst'
		and to_date >= '2019-03-13 18:42:46' and from_date <= '2094-10-15 03:10:14'
