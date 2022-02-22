
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='11company' and spd.designation='Administrative Officer'
		and to_date >= '2078-10-16 11:53:09' and from_date <= '2094-09-30 03:26:16'
