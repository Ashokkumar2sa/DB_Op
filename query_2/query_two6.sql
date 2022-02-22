
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='14company' and spd.designation='Secretary'
		and to_date >= '2018-12-01 07:49:32' and from_date <= '2090-06-04 15:33:01'
