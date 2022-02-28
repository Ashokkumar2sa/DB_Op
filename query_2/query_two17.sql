
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='11company' and spd.designation='Associate'
		and to_date >= '2065-10-06 22:20:54' and from_date <= '2099-02-16 16:36:24'
