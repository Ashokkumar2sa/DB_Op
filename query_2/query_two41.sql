
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='15company' and spd.designation='Business Development Manager'
		and to_date >= '2057-02-02 18:48:52' and from_date <= '2080-07-04 03:42:31'
