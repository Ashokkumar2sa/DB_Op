
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Administrative Officer'  and sp.to_date >= '2060-02-04 07:14:56' and
			sp.from_date <= '2062-11-01 08:36:24'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '8company')


