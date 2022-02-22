
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Engineer'
			and sp.to_date >= '2054-11-12 22:52:31' and sp.from_date <= '2071-07-11 00:48:05' and sp.company = '11company'
