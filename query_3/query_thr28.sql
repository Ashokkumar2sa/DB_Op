
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2065-09-11 08:42:11' and sp.from_date <= '2090-02-16 00:49:49' and sp.company = '17company'
