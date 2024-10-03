# React Vite Project Starter
Setup of a standard SPA React project.

## What to do first.
- Update packages with [ npm-check-updates ]( https://www.npmjs.com/package/npm-check-updates )
- Read packages.json and see what is included.
- Read the rest of README.md
- Add your stuff now (˶ᵔ ᵕ ᵔ˶)

## Environment
Make sure you are using the specified version of Node.js in `.nvmrc` and you have enabled [corepack](https://nodejs.org/api/corepack.html), you can do this via `corepack enable` command.

## Dev server
Use command `pnpm dev`.

## Building the project
Use command `pnpm build`.

## Lint and auto fix
Project has configured eslint and prettier. To check the errors/warnings use command `pnpm lint`, and to fix auto-fixable errors use `pnpm fix`.
Make sure to include lint stage in CI step before building.

## Docker
This template has simple Dockerfile that will build the project and serve the statics under port 80 via nginx.

## Package manager
Configured package manager [pnpm](https://pnpm.io/) it will be automatically installed if you enable corepack.
To update the version of the pnpm simply use `corepack use pnpm@<desired_version>`

## Styling
[Sass](https://sass-lang.com/) SCSS variant used for writing CSS.

### Global styles prefix
This project template configures vite so the [prefix.scss](src/shared/scss/prefix/_index.scss) is always prefixed for every processed SCSS file, this speeds up development making all helpful mixins and utils available in all files without thinking about importing them to every single style.scss .

### Breakpoints
Breakpoints are configured in [ bootstrap.scss ]( src/shared/scss/prefix/_bootstrap.scss ).

### Styles encapsulation
Write a proper selectors and name classes/ids well ◕⩊◕.

## Recommended additional packages
- [zod](https://zod.dev/) Schema validation for Typescript.
- [react-hook-form](https://react-hook-form.com/) The best way to write forms with react. (Recommended to use with zod)
- [zustand](https://zustand-demo.pmnd.rs/) Simple yet powerful global state.
- [react-tracked](https://react-tracked.js.org/) Elegant and efficient way to use native context and more.
- [clsx](https://www.npmjs.com/package/clsx) Great utility for dynamic assignment of className.
- [floating-ui](https://floating-ui.com/) Everything "floating", tooltips, popovers etc. Great successor of "popper.js".
- [tanstack-router](https://tanstack.com/router/latest) Routing for React apps with awesome automatic types generation.
- [tanstack-query](https://tanstack.com/query/latest) Async operations helper for react components, allows to skip most of the hassle in implementing async state changes in components.
- [tanstack-virtual](https://tanstack.com/virtual/latest) Implementing DOM virtualization was never easier.
- [typesafe-i18n](https://github.com/ivanhofer/typesafe-i18n) i18n Translations with automatic type generation.
