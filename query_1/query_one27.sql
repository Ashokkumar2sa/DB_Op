
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Researcher'  and sp.to_date >= '2065-01-16 08:39:29' and
			sp.from_date <= '2077-03-30 05:04:58'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '5company')


