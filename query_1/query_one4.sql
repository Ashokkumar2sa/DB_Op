
  SET STATISTICS TIME ON;
GO
select spd.vacancies as vacancies,
			spd.total_ec as total_ec
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_n as sp on spd.ID = sp.ID
			where designation='Administrative Officer'  and sp.to_date >= '2003-02-02 23:35:50' and
			sp.from_date <= '2061-09-24 00:24:11'
			and sp.company in (select name from Main.dbo.company_n where parent_company = '3company')


