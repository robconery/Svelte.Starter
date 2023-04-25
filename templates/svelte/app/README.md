# create-svelte

Everything you need to build a Svelte project, powered by [`create-svelte`](https://github.com/sveltejs/kit/tree/master/packages/create-svelte).

## Creating a project

If you're seeing this, you've probably already done this step. Congrats!

```bash
# create a new project in the current directory
npm create svelte@latest

# create a new project in my-app
npm create svelte@latest my-app
```

## Developing

Once you've created a project and installed dependencies with `npm install` (or `pnpm install` or `yarn`), start a development server:

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Tests
[Playwright](https://playwright.dev) is set up for you, along with the example tests for your reference. You can run these using `npx` and Playwright directly (`npx playwright test`) or the more traditional `npm run test`. 

Right now the tests are setup to work with the Minimal API bits, ensuring content is delivered from the backend. For this to work, you'll need to be sure you run `npm run dev` from the root of the project so both API and frontend have started up.

## Building

To create a production version of your app:

```bash
npm run build
```

You can preview the production build with `npm run preview`.

> To deploy your app, you may need to install an [adapter](https://kit.svelte.dev/docs/adapters) for your target environment.
