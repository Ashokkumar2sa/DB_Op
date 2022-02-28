
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='12company' and spd.designation='Secretary'
		and to_date >= '2028-01-02 05:20:29' and from_date <= '2077-07-31 14:45:04'
