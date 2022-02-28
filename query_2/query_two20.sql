
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='10company' and spd.designation='HR Manager'
		and to_date >= '2007-05-04 07:39:30' and from_date <= '2036-12-28 23:48:39'
