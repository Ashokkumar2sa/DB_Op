
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2039-08-07 23:23:02' and sp.from_date <= '2057-06-03 08:49:26' and sp.company = '5company'
