
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='2company' and spd.designation='Business Development Manager'
		and to_date >= '2003-09-23 07:26:29' and from_date <= '2005-08-09 20:02:38'
