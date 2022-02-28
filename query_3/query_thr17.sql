
  SET STATISTICS TIME ON;
GO
  select spd.ID
			from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID = sp.ID
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2099-09-23 13:55:58' and sp.from_date <= '2099-11-13 18:50:36' and sp.company = '6company'
