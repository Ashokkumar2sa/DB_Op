
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='10company' and spd.designation='Secretary'
		and to_date >= '2072-11-04 09:36:07' and from_date <= '2099-03-23 12:47:46'
