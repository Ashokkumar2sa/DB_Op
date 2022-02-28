
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2035-06-14 16:07:15' and sp.from_date <= '2075-10-11 22:22:11' and sp.company = '13company'
