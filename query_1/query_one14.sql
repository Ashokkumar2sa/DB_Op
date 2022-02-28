
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Analyst'  and sp.to_date >= '2087-11-13 09:42:20' and
			sp.from_date <= '2096-09-12 03:40:08'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '7company')


