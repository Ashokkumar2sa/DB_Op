
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Administrative Officer'  and sp.to_date >= '2071-12-14 06:49:35' and
			sp.from_date <= '2095-05-18 10:00:46'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '6company')


