<div class="container mx-auto flex px-5 md:flex-row flex-col items-center">
  <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0">
    <img class="object-cover object-center rounded" alt="Placeholder hero" src="{image}">
  </div>
  <div class="lg:flex-grow md:w-1/2 lg:pl-24 md:pl-16 flex flex-col md:items-start md:text-left items-center text-center">
    <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900" aria-label="{title}" data-testid="hero-title">{ title }</h1>
    <div class="mb-8 leading-relaxed" data-testid="hero-text">
      {@html html}
    </div>
    <div class="flex justify-center">
      <slot></slot> 
    </div>
  </div>
</div>

<script>
  export let title;
  export let html;
  export let image;
</script>