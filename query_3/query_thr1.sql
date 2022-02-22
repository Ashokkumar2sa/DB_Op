
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Designer'
			and sp.to_date >= '2001-12-30 08:14:45' and sp.from_date <= '2069-07-08 03:33:09' and sp.company = '12company'
