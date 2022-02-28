
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Secretary'  and sp.to_date >= '2049-12-03 03:54:31' and
			sp.from_date <= '2080-11-01 16:06:43'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '4company')


