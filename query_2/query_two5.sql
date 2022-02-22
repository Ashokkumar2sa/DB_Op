
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='15company' and spd.designation='Secretary'
		and to_date >= '2014-09-22 10:00:19' and from_date <= '2072-07-25 04:24:30'
