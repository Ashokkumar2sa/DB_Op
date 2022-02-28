
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='16company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2091-03-21 06:00:15' and from_date <= '2098-07-10 16:04:04'
