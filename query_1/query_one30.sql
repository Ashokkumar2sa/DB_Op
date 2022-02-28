
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Researcher'  and sp.to_date >= '2083-08-10 21:08:40' and
			sp.from_date <= '2091-06-11 22:57:48'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


