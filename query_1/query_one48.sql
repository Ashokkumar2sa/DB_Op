
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Analyst'  and sp.to_date >= '2072-09-30 17:14:52' and
			sp.from_date <= '2097-01-14 03:30:06'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '5company')


