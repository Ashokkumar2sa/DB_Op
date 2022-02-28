
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='11company' and spd.designation='Software Developer'
		and to_date >= '2002-03-02 17:31:19' and from_date <= '2013-05-16 04:22:31'
