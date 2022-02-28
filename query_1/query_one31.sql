
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Designer'  and sp.to_date >= '2046-03-23 19:19:09' and
			sp.from_date <= '2076-01-12 10:54:19'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '5company')


