
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='13company' and spd.designation='Business Development Manager'
		and to_date >= '2043-12-02 03:52:38' and from_date <= '2086-09-29 17:49:15'
