
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='8company' and spd.designation='Associate'
		and to_date >= '2025-01-14 04:44:26' and from_date <= '2084-10-10 06:55:46'
