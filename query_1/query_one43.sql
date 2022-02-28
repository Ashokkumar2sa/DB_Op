
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Engineer'  and sp.to_date >= '2054-07-10 05:26:45' and
			sp.from_date <= '2077-02-17 08:51:15'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '5company')


