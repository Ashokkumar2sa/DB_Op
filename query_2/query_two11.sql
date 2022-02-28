
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='5company' and spd.designation='HR Manager'
		and to_date >= '2096-07-12 03:42:21' and from_date <= '2098-02-26 09:48:53'
