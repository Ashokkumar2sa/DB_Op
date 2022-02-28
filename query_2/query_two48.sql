
  SET STATISTICS TIME ON;
GO
  select sp.ID, spd.vacancies, spd.total_ec
		from Main.dbo.Staffing_Plan_spd as spd join Main.dbo.Staffing_Plan_t as sp on spd.ID=sp.ID
		where company='14company' and spd.designation='Secretary'
		and to_date >= '2082-11-18 19:45:05' and from_date <= '2089-08-09 09:19:10'
