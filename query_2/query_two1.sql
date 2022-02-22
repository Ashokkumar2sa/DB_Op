
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='15company' and spd.designation='Business Development Manager'
		and to_date >= '2086-11-19 05:55:49' and from_date <= '2095-03-26 04:16:50'
