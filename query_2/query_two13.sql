
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='Administrative Officer'
		and to_date >= '2024-11-25 16:19:00' and from_date <= '2070-04-01 04:54:49'
