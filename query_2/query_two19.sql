
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='1company' and spd.designation='Business Development Manager'
		and to_date >= '2056-07-03 23:17:10' and from_date <= '2063-02-24 08:23:29'
