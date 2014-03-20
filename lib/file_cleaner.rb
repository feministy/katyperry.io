require 'tempfile'

class FileCleaner
  def initialize(filename)
    @filename = filename
  end

  def remove_lines(start, num)
    tmp = Tempfile.open('temp') do |fp|
      File.foreach(@filename) do |line|
        if $. >= start and num > 0
          num -= 1
        else
          fp.puts line
        end
      end
      fp
    end
    puts "Warning: End of file encountered before all lines removed" if num > 0
    FileUtils.copy(tmp.path, @filename)
    tmp.unlink
  end
end


Dir.glob("db/lyrics/*.html") do |file|
  clean = FileCleaner.new(File.new(file))
  clean.remove_lines(90, 500)
end