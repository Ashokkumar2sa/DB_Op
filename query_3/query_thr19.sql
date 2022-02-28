
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Secretary'
			and sp.to_date >= '2079-01-24 10:22:23' and sp.from_date <= '2091-07-18 19:31:49' and sp.company = '16company'
