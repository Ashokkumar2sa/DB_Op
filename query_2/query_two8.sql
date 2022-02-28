
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='5company' and spd.designation='Accountant'
		and to_date >= '2000-03-25 02:40:10' and from_date <= '2023-12-09 01:57:50'
