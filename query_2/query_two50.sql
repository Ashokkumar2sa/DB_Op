
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='2company' and spd.designation='Engineer'
		and to_date >= '2070-04-02 18:03:34' and from_date <= '2089-11-06 18:03:56'
