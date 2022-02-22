
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Administrative Officer'
			and sp.to_date >= '2077-07-09 08:50:26' and sp.from_date <= '2081-08-19 01:04:54' and sp.company = '4company'
