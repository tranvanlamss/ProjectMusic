<template>
  <div class="h-screen" style="background: #121212">
    <div class="flex" style="height: 88vh;">
      <!--  Side Nav    -->
      <client-sidebar/>
      <!--  main content    -->
      <div class="w-full h-full relative overflow-y-scroll">
        <!--  header  -->
        <client-navbar/>
        <!-- cards -->
        <div class="px-6 py-3">
          <div class=" pb-4">
            <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Genres</h1>
            <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">Music expresses that which cannot be said and on which it is impossible to be silent.</h2>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="genre in genres" :key="genre.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
              <router-link :to="`/genre_detail/${genre.id}`">
                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img class="h-auto w-full shadow mb-2" style="object-fit: cover; height: 140px; width: 140px" :src="`${ genre.image_url }`" alt="cover_card">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ genre.name }}</h1>
                </div>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--  play bar    -->
    <play-bar ref="modal"/>
  </div>
</template>

<script>
import ClientSidebar from "@/components/Sidebar/clientSidebar";
import ClientNavbar from "@/components/Navbars/clientNavbar";
import PlayBar from "@/components/Others/playBar";
import axios from "axios";
export default {
  name: "Genres",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      genres: [],
    }
  },
  async created() {
    try {
      const res = await axios.get('http://localhost:8080/genre/get-all', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.genres = res.data.data

    } catch (e) {
      console.error(e)
    }
  },
}
</script>

<style scoped>

</style>