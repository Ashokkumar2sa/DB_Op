
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='HR Manager'
		and to_date >= '2082-09-06 06:59:17' and from_date <= '2097-07-11 09:31:12'
