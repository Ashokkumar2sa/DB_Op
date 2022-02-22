
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='15company' and spd.designation='Researcher'
		and to_date >= '2025-07-22 15:55:59' and from_date <= '2038-03-30 08:53:17'
