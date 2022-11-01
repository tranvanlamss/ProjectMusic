<template>
  <div class="w-56 bg-black h-full" style="width: 14rem; flex: none">
    <div class="" style="padding: 1.5rem">
      <img class="" src="@/assets/img/imgpsh_fullsize_anim-removebg-preview.png" style="height: 9.6rem"
           alt="logo">
    </div>
    <div class="mb-6">
      <div class="mx-2" v-for="page in pages">
        <router-link :to="`${page.link_url}`" :style="`${setID === page.id ? 'background: #282828; color: white' : 'color: #B3B3B3' }`"  @click="setID = page.id;">
          <button class="w-full text-sm font-semibold rounded px-3 py-2 flex items-center justify-start">
            <i class="material-icons mr-3">{{ page.icon }}</i>
            <p>{{ page.name }}</p>
          </button>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "clientSidebar",
  data: function () {
    return {
      pages: [
        {id: 'home', name: 'Home', icon: 'home', link_url: '/'},
        {id: 'search', name: 'Search', icon: 'search', link_url: '/search'},
        {id: 'library', name: 'Your Library', icon: 'bar_chart', link_url: '/your_library'},
        {id: 'artists', name: 'Artists', icon: 'mic', link_url: '/artists'},
        {id: 'albums', name: 'Top Albums', icon: 'album', link_url: '/albums'},
        {id: 'genres', name: 'Genres', icon: 'star', link_url: '/genres'},
      ],
      setID: '',
    }
  }
}
</script>

<style scoped>

</style>