
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Accountant'  and sp.to_date >= '2038-05-21 09:01:25' and
			sp.from_date <= '2048-11-15 13:24:48'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '2company')


