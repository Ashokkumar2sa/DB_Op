
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2088-10-20 06:35:18' and sp.from_date <= '2093-04-03 19:30:02' and sp.company = '12company'
