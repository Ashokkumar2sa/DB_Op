
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='1company' and spd.designation='Researcher'
		and to_date >= '2020-08-09 15:12:40' and from_date <= '2055-04-30 05:18:31'
