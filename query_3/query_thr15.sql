
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Project Manager'
			and sp.to_date >= '2001-02-22 15:04:54' and sp.from_date <= '2097-09-05 17:37:22' and sp.company = '16company'
