
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='HR Manager'  and sp.to_date >= '2021-05-17 06:17:46' and
			sp.from_date <= '2040-12-05 06:48:13'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


