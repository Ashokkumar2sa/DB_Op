
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='4company' and spd.designation='Administrative Officer'
		and to_date >= '2088-05-13 13:35:48' and from_date <= '2090-01-29 02:11:33'
