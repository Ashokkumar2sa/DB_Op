
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'HR Manager'
			and sp.to_date >= '2045-08-23 04:17:11' and sp.from_date <= '2062-03-05 17:57:00' and sp.company = '13company'
