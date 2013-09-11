module WeeksHelper
	def favicon(link)
		scheme = URI(link.url).scheme
		host = URI(link.url).host
		return "http://g.etfv.co/" + scheme + "://" + host
	end
end
