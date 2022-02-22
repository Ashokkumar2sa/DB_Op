
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='1company' and spd.designation='Administrative Officer'
		and to_date >= '2047-11-30 15:00:44' and from_date <= '2081-05-22 01:39:10'
