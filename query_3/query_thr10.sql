
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Engineer'
			and sp.to_date >= '2076-11-17 16:05:20' and sp.from_date <= '2095-09-26 03:26:24' and sp.company = '9company'
