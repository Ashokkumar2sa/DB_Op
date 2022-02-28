
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='13company' and spd.designation='Secretary'
		and to_date >= '2072-07-02 20:18:31' and from_date <= '2074-09-13 15:30:55'
