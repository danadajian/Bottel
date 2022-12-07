import './commands'

import { mount } from 'cypress/react18'

Cypress.Commands.add('mount' as keyof Cypress.Chainable, mount as Cypress.CommandFn<any>)
