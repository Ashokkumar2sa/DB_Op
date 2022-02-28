
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2082-11-16 07:38:42' and sp.from_date <= '2096-12-06 22:41:03' and sp.company = '1company'
