
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Analyst'  and sp.to_date >= '2097-11-11 03:01:53' and
			sp.from_date <= '2099-05-31 06:55:31'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '8company')


