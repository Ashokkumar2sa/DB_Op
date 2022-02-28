
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Accountant'  and sp.to_date >= '2047-10-09 15:02:45' and
			sp.from_date <= '2077-04-23 07:51:45'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '3company')


