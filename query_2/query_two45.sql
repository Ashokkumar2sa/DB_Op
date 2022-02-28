
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='6company' and spd.designation='Business Development Manager'
		and to_date >= '2080-01-27 02:41:12' and from_date <= '2099-09-07 13:48:47'
