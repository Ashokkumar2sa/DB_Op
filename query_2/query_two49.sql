
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='15company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2093-12-03 12:30:41' and from_date <= '2096-08-27 02:49:13'
