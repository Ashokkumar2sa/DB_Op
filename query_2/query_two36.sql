
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='NA' and spd.designation='Engineer'
		and to_date >= '2025-05-13 07:23:35' and from_date <= '2098-03-17 01:21:01'
