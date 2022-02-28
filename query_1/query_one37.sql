
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Analyst'  and sp.to_date >= '2038-03-29 05:47:09' and
			sp.from_date <= '2093-01-13 08:49:45'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '3company')


