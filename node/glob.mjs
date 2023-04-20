import { minimatch } from 'minimatch'
import { relative } from 'node:path'
import {fileURLToPath} from 'node:url'

const [_, __, glob, filename] = process.argv
if (glob === undefined || filename === undefined) {
  console.error(`Usage: ${
    relative(process.cwd(), fileURLToPath(import.meta.url))
  } <glob> <filename>`)
  process.exit(1)
}

console.log(`${JSON.stringify(filename)} ${
  minimatch(filename, glob) ? 'matches' : 'does not match'
} ${JSON.stringify(glob)}`)
