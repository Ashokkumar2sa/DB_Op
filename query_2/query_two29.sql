
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='16company' and spd.designation='Accountant'
		and to_date >= '2041-10-18 14:32:05' and from_date <= '2046-08-03 22:43:37'
