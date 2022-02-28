
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Secretary'  and sp.to_date >= '2022-08-17 11:20:19' and
			sp.from_date <= '2037-05-11 05:40:58'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '8company')


