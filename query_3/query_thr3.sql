
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Software Developer'
			and sp.to_date >= '2040-04-13 16:40:46' and sp.from_date <= '2077-11-05 18:23:00' and sp.company = '7company'
