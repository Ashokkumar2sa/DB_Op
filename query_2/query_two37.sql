
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='Designer'
		and to_date >= '2070-05-27 08:08:03' and from_date <= '2095-05-14 21:57:57'
