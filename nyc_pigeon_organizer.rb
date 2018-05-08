def nyc_pigeon_organizer(data)
  pigeon_list={}
  data.each do |cgl,secondLevel|
    secondLevel.each do |cgl_value,value|
      value.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][cgl] ||= [cgl_value.to_s]
        #pigeon_list[name][cgl] += [cgl_value.to_s]
      end
    end
  end
  pigeon_list
end
