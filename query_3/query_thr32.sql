
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2016-10-17 16:08:31' and sp.from_date <= '2037-02-07 00:55:28' and sp.company = '6company'
