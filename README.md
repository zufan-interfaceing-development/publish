# Publish On Npm

### This Package is meant to make publishing react projects on NPM lot easer. This package uses the following packages
* Storybook.js
    * [Storybook](https://storybook.js.org/) provides you with isolated environment thats capable of HMR (hot module replacement).
* Rollup.js
    * [Rollup.js](https://www.rollupjs.org/) compiles small pieces of code into something larger and more complex, such as a library or application.

## Package Use
1. First clone this repo
    *       clone git@github.com:zufan-interfaceing-development/publishfilestructure.git
2. Create your Component. 
    * In the `src/components` create new folder. Then in same directory (`src/components/yourNewFolder`) create new file, `your-component.js`. In this file you will need to create your components.

3. Then in same directory (`src/components/yourNewFolder`) create an index.js page that exports your components from `src/components/yourNewFolder/your-component.js.`.

4. In the `src/index.js`, add an `export {Your-component} from './components/example'`

5. Finally `npm run build-lib`. 
Then `npm publish`.

