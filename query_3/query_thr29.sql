
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Secretary'
			and sp.to_date >= '2025-07-17 16:23:07' and sp.from_date <= '2034-07-13 09:57:23' and sp.company = '11company'
