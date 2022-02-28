
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Engineer'  and sp.to_date >= '2032-03-03 01:25:32' and
			sp.from_date <= '2081-02-05 12:09:38'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '8company')


