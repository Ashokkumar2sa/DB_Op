
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='5company' and spd.designation='Analyst'
		and to_date >= '2004-01-06 05:06:43' and from_date <= '2021-10-07 23:22:13'
