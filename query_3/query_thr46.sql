
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Engineer'
			and sp.to_date >= '2090-08-07 05:40:16' and sp.from_date <= '2094-02-01 04:25:40' and sp.company = '7company'
