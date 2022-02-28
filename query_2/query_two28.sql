
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='8company' and spd.designation='Administrative Officer'
		and to_date >= '2074-01-06 18:12:34' and from_date <= '2096-11-02 03:59:54'
