class Quicklink < ActiveRecord::Base
	default_scope order: 'quicklinks.name ASC'
end
