
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='5company' and spd.designation='HR Manager'
		and to_date >= '2089-08-12 03:04:54' and from_date <= '2090-05-15 12:13:48'
