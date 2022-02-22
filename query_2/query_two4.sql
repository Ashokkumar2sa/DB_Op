
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='12company' and spd.designation='Head of Marketing and Sales'
		and to_date >= '2076-10-13 07:12:14' and from_date <= '2090-03-25 11:42:29'
