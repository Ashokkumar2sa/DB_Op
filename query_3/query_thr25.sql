
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Head of Marketing and Sales'
			and sp.to_date >= '2088-05-26 00:37:54' and sp.from_date <= '2099-06-15 21:57:29' and sp.company = '12company'
