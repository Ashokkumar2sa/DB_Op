
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='14company' and spd.designation='Secretary'
		and to_date >= '2078-11-14 13:28:46' and from_date <= '2091-02-28 15:16:03'
