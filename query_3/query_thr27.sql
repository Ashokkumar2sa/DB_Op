
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Accountant'
			and sp.to_date >= '2097-01-02 01:42:21' and sp.from_date <= '2097-02-27 06:23:03' and sp.company = '2company'
