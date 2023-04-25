<script>
import TwelveEighty from "../components/Block/1280.svelte"
import Hero from "../components/Block/Hero.svelte"
import Feature from "../components/Block/Feature.svelte"
import {onMount} from "svelte";
let features = [];
let docs = {};

onMount( async () => {
  const res = await fetch("http://localhost:8000/api/content/home");
  const content = await res.json();
  content.forEach(d => {
    docs[d.slug.toLowerCase()] = d;
  });
  features = [
    docs.tailwind,
    docs.minimalapi,
    docs.ecosystem,
    docs.tooling,
    docs.aspnet,
    docs.community
  ];
});


</script>
<TwelveEighty>
  <section class="text-gray-600 body-font py-24" aria-label="Hero">
    <Hero {...docs.hero}></Hero>
  </section>
  <section class="text-gray-600 body-font" aria-label="Features">

    <div class="container px-5 mx-auto">
      <div class="flex flex-wrap sm:-m-4 -mx-4 -mb-10 -mt-4 md:space-y-0 space-y-6" >
      {#each features as feature}
        <Feature body={feature.html} title={feature.title} link={feature.url} icon={feature.icon} />
      {/each}

      </div>
    </div>
  </section>
</TwelveEighty>

