
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='4company' and spd.designation='Business Development Manager'
		and to_date >= '2073-08-13 11:05:41' and from_date <= '2081-09-02 12:01:15'
