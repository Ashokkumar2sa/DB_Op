
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2006-06-25 07:51:22' and sp.from_date <= '2047-12-14 16:30:39' and sp.company = '14company'
