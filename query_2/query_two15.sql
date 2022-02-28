
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='17company' and spd.designation='Associate'
		and to_date >= '2082-03-22 01:38:47' and from_date <= '2093-07-06 10:58:12'
