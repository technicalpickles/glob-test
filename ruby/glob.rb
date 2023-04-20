# testing against builtin glob library

if ARGV.size < 2
  warn "Usage: #{$0} <glob> <filename>"
  exit 1
end

glob = ARGV[0]
filename = ARGV[1]

begin
  if File.fnmatch(glob, filename, File::FNM_EXTGLOB | File::FNM_PATHNAME)
    puts "#{filename} matches #{glob}"
  else
    puts "#{filename} does not match #{glob}"
  end
rescue => e
  warn "Problem testing #{filename.inspect} against #{glob}"
  warn e
  exit 1
end
