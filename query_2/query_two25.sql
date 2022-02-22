
  select sp.name, spd.vacancies, spd.total_estimated_cost
		from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
		where company='17company' and spd.designation='Designer'
		and to_date >= '2075-03-03 08:28:50' and from_date <= '2079-02-17 09:16:22'
