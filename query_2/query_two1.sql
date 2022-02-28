
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='NA' and spd.designation='Secretary'
		and to_date >= '2056-03-13 13:29:24' and from_date <= '2080-04-23 18:48:01'
