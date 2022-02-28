
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='17company' and spd.designation='Software Developer'
		and to_date >= '2052-08-17 06:42:14' and from_date <= '2089-11-24 16:57:04'
