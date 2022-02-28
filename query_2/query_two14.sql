
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='10company' and spd.designation='Accountant'
		and to_date >= '2068-09-05 14:36:26' and from_date <= '2092-08-05 00:40:48'
