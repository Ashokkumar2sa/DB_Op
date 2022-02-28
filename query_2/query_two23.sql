
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='14company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2029-07-01 05:32:52' and from_date <= '2040-08-03 15:26:45'
