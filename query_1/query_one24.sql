
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Administrative Officer'  and sp.to_date >= '2020-12-16 18:51:58' and
			sp.from_date <= '2029-01-30 05:56:05'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


