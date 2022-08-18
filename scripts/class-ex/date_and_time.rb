=begin
All the following methods were used in Rails Console
=end

Time.now
# => 2022-08-18 10:05:48.348452 -0500
Time.now + 2.days
# => 2022-08-20 10:06:00.031616 -0500
date = Time.current
# => 2022-08-20 10:06:30.553547 -0500
date.to_formatted_s(:short)
# => "18 Aug 15:06"
date.to_i
# => 1660835211
Time.at(1660835211)
# => 2022-08-18 10:06:51 -0500
date.strftime("%d/%m/%Y")
# => "18/08/2022"
