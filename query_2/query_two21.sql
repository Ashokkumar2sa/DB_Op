
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='6company' and spd.designation='Project Manager'
		and to_date >= '2057-11-10 03:30:05' and from_date <= '2096-05-06 17:41:02'
