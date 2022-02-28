
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Associate'  and sp.to_date >= '2027-05-17 19:56:33' and
			sp.from_date <= '2083-12-01 02:55:45'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '1company')


