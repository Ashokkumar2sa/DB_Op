
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Administrative Officer'  and sp.to_date >= '2063-04-23 10:38:20' and
			sp.from_date <= '2093-08-20 02:32:09'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '5company')


