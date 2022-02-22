
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='2company' and spd.designation='HR Manager'
		and to_date >= '2076-12-20 17:31:25' and from_date <= '2083-05-27 01:30:46'
