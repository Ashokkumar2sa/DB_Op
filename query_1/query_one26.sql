
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='HR Manager'  and sp.to_date >= '2015-10-19 02:02:10' and
			sp.from_date <= '2086-03-11 14:05:17'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '8company')


