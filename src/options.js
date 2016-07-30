import path from 'path'
import pkg from '../package.json'
import eslint from 'eslint'

module.exports = {
  cmd: 'superstandard',
  version: pkg.version,
  homepage: pkg.homepage,
  bugs: pkg.bugs.url,
  tagline: 'Even more standardized.',
  eslint,
  eslintConfig: {
    configFile: path.resolve(__dirname, '..', 'eslintrc.json')
  }
}
