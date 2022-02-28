
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Secretary'  and sp.to_date >= '2039-08-09 07:53:07' and
			sp.from_date <= '2075-10-04 04:25:48'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '3company')


