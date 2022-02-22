
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2079-11-18 12:53:05' and sp.from_date <= '2083-04-25 20:36:36' and sp.company = '15company'
