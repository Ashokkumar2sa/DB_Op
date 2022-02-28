
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2054-08-11 05:27:57' and sp.from_date <= '2094-03-11 03:38:14' and sp.company = '4company'
