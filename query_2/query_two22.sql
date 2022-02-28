
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='16company' and spd.designation='Designer'
		and to_date >= '2058-11-30 18:07:41' and from_date <= '2063-04-05 16:35:08'
