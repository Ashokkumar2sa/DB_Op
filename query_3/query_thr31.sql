
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2086-07-04 02:44:30' and sp.from_date <= '2095-01-18 01:20:10' and sp.company = '13company'
