
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Head of Marketing and Sales'  and sp.to_date >= '2056-01-05 01:28:23' and
			sp.from_date <= '2068-12-10 10:01:46'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


