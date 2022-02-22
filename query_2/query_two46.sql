
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='14company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2048-10-10 18:04:41' and from_date <= '2057-07-12 05:46:21'
