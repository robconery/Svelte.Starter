// @ts-check
import { test, expect } from '@playwright/test';

//load up the home
test.beforeEach(async ({ page }) => {
  await page.goto('/');
  //Since the page loads from an external API we need to wait for the response before testing
  await Promise.all([
    page.waitForResponse(resp => resp.url().includes("/api/content"))
  ]);
  
});

test('The home page has our title', async ({ page }) => {
  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle("The Minimal API | Svelte Starter")
});

//let's make sure we're pulling data from the API
//for this to work, start the app from the project root using npm run dev
test.describe("The content API", async () => {
  test('Loads up the hero', async ({ page }) => {
 
    // The hero text is loaded from the API.
    const heading = await page.innerHTML("data-testid=hero-title");
    //const text = heading.innerHTML();
    expect(heading).toBe("Welcome to the ASP.NET Minimal API/Svelte Starter Kit")
    
  });
  test('Loads up the six feature blocks', async ({ page }) => {
 
    const features = await page.getByRole("region", { name: "Features" }).getByTestId("feature-title");
    await expect(features).toHaveCount(6);
    //expect(features.length).toEqual(6);
    
  });
  
});


// test('get started link', async ({ page }) => {
//   await page.goto('https://playwright.dev/');

//   // Click the get started link.
//   await page.getByRole('link', { name: 'Get started' }).click();

//   // Expects the URL to contain intro.
//   await expect(page).toHaveURL(/.*intro/);
// });
