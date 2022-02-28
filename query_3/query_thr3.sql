
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Accountant'
			and sp.to_date >= '2014-08-05 12:39:25' and sp.from_date <= '2025-01-29 16:48:49' and sp.company = '4company'
