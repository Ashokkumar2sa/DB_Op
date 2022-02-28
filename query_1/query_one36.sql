
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Project Manager'  and sp.to_date >= '2032-02-17 15:12:38' and
			sp.from_date <= '2053-11-07 19:59:08'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


