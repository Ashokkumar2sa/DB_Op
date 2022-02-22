
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='Accountant'
		and to_date >= '2038-08-17 01:41:44' and from_date <= '2056-03-13 06:19:55'
