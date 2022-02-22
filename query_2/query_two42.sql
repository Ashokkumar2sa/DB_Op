
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='NA' and spd.designation='Accountant'
		and to_date >= '2075-10-25 06:39:36' and from_date <= '2083-07-29 04:31:59'
