
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='10company' and spd.designation='HR Manager'
		and to_date >= '2076-05-13 04:34:42' and from_date <= '2081-01-03 08:35:43'
