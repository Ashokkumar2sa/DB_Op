
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Business Development Manager'  and sp.to_date >= '2076-03-31 08:34:15' and
			sp.from_date <= '2083-04-17 07:08:38'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '1company')


