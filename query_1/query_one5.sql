
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Head of Marketing and Sales'  and sp.to_date >= '2098-02-15 13:03:03' and
			sp.from_date <= '2099-04-07 19:47:54'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '7company')


