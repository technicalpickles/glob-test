# testing against builtin glob library

if ARGV.size < 2
  warn "Usage: #{$0} <glob> <filename>"
  exit 1
end

glob = ARGV[0]
filename = ARGV[1]

begin
  if File.fnmatch(glob, filename, File::FNM_EXTGLOB | File::FNM_PATHNAME)
    puts "#{filename.inspect} matches #{glob.inspect}"
  else
    puts "#{filename.inspect} does not match #{glob.inspect}"
  end
rescue => e
  warn "Problem testing #{filename.inspect} against #{glob.inspect}"
  warn e
  exit 1
end
