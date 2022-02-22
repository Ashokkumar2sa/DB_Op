
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='4company' and spd.designation='HR Manager'
		and to_date >= '2055-12-25 01:09:27' and from_date <= '2069-04-09 00:42:46'
