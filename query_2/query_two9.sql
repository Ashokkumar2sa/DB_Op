
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='7company' and spd.designation='Administrative Officer'
		and to_date >= '2072-07-01 06:17:22' and from_date <= '2087-11-05 20:09:27'
