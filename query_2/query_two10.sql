
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='3company' and spd.designation='HR Manager'
		and to_date >= '2022-11-28 09:40:43' and from_date <= '2062-09-17 10:30:56'
