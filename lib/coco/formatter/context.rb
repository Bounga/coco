# -*- encoding: utf-8 -*-

module Coco

  # Contextual information for ERB template, representing each covered files.
  class Context

    # Public: Initialize a Context for a covered file shown in the HTML
    # report.
    #
    # filename - A String name of the source file.
    # lines    - An Array of lines.
		def initialize(filename, lines)
			@filename = filename
      @lines = lines
		end
		
		def get_binding
			binding
		end
	end

  # Contextual information for ERB template, representing index.html.
  class IndexContext

    # Public: Initialize an IndexContext for the index file in the HTML
    # report.
    #
    # title     - The String title for the report.
    # covered   - Array of subarrays. Each subarray is:
    #             [
    #               Fixnum coverage percentage,
    #               String formatted filename (HTML ready),
    #               String real filename
    #             ]
    #             FIXME Need a class to handle subarrays.
    # uncovered - Array of String filenames. The filenames are already
    #             formatted, ready to be display in an HTML file.
    #
		def initialize(title, covered, uncovered)
			@title = title
      @covered = covered
      @uncovered = uncovered
		end
		
		def get_binding
			binding
		end
	end

end
