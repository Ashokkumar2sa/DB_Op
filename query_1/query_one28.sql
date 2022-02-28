
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Analyst'  and sp.to_date >= '2064-01-15 10:35:24' and
			sp.from_date <= '2094-06-27 23:24:14'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '7company')


