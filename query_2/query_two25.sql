
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='3company' and spd.designation='Associate'
		and to_date >= '2079-12-06 02:42:44' and from_date <= '2091-08-17 15:37:23'
