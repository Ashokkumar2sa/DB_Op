
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2052-06-22 12:18:35' and sp.from_date <= '2092-04-21 20:19:22' and sp.company = '2company'
