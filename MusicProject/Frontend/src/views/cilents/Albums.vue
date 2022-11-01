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
            <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Albums</h1>
            <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">Music is the language of the spirit.</h2>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="album in albums" :key="album.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
              <router-link :to="`/album_detail/${album.id}`">
                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img class="h-auto w-full shadow mb-2" :src="`${album.album_art}`" alt="cover_card">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ album.name }}</h1>
                  <h2 class="text-xs tracking-wide pb-6" style="color:#B3B3B3;">{{ album.album_artist }}</h2>
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
  name: "Albums",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      albums: [],
    }
  },
  async created() {
    try {
      const res = await axios.get('http://localhost:8080/album/get-list', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.albums = res.data.data

    } catch (e) {
      console.error(e)
    }
  },
}
</script>

<style scoped>

</style>