
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Secretary'
			and sp.to_date >= '2076-12-29 04:23:34' and sp.from_date <= '2095-02-15 01:22:09' and sp.company = 'NA'
