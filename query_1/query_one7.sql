
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Project Manager'  and sp.to_date >= '2078-09-27 03:27:41' and
			sp.from_date <= '2097-08-05 09:36:12'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '6company')


