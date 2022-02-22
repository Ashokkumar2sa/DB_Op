
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Researcher'
			and sp.to_date >= '2063-05-23 13:13:39' and sp.from_date <= '2081-05-08 08:40:16' and sp.company = '11company'
