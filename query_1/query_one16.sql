
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Researcher'  and sp.to_date >= '2030-04-19 16:39:23' and
			sp.from_date <= '2038-02-05 17:16:56'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '7company')


