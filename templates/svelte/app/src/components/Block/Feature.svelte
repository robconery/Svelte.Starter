<div class="p-4 md:w-1/3 flex" aria-label="{title}">
  <div class="w-12 h-12 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 mb-4 flex-shrink-0">
    <i class="{icon}"></i>
  </div>
  <div class="flex-grow pl-6">
    <h2 class="text-gray-900 text-lg title-font font-medium mb-2" data-testid="feature-title">{ title }</h2>
    <p class="leading-relaxed text-base"> {@html body}</p>
    <a class="mt-3 text-indigo-500 inline-flex items-center" href="{link}">Learn More
      <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-2" viewBox="0 0 24 24">
        <path d="M5 12h14M12 5l7 7-7 7"></path>
      </svg>
    </a>
  </div>
</div>

<script>
  export let title;
  export let link;
  export let body;
  export let icon;
</script>