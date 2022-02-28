
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='17company' and spd.designation='Business Development Manager'
		and to_date >= '2066-03-19 09:50:12' and from_date <= '2098-10-30 12:14:29'
