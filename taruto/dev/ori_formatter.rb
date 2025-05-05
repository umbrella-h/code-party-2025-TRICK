# Restore the shaped codes back to the original, readable format

shaped_file_path = ARGV[0]
restored_file_path = ARGV[1]
shaped_codes = File.read(shaped_file_path)

def restore_shaped(input)
  lines = input.gsub(/\s|\n/, '').split(";")
  lines.join(";\n")
end

restored_codes = restore_shaped(shaped_codes)
File.write(restored_file_path, restored_codes)