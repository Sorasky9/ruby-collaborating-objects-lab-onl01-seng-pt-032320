class MP3Importer
attr_accessor :filepath, :path

def initialize(path)
  @path = path
end

def files
   file_array =  Dir.glob("#{path}/*.mp3")
  file_array.collect do |file| #collect returns array
    file.slice!("#{path}/")
    file
  end
end 


end
