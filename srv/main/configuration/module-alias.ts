import moduleAlias from 'module-alias'
import { join } from 'path'

moduleAlias.addAlias("@", join(__dirname, '..', '..'))