
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='6company' and spd.designation='HR Manager'
		and to_date >= '2051-12-05 06:40:50' and from_date <= '2073-12-11 13:50:31'
