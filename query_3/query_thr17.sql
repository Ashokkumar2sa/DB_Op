
  select spd.parent
			from `tabStaffing Plan Detail` spd join `tabStaffing Plan` sp on spd.parent=sp.name
			where spd.designation= 'Accountant'
			and sp.to_date >= '2017-07-03 04:59:39' and sp.from_date <= '2031-12-18 19:13:08' and sp.company = '17company'
