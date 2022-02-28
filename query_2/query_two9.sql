
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='17company' and spd.designation='Researcher'
		and to_date >= '2050-03-26 23:52:17' and from_date <= '2051-04-20 15:01:23'
