<template>
  <div class="h-screen" style="background: #121212">
    <div class="flex" style="height: 88vh;">
      <!--  Side Nav    -->
      <client-sidebar/>
      <!--  main content    -->
      <div class="w-full h-full relative overflow-y-scroll">
        <!--  header  -->
        <client-navbar/>
        <!-- song query -->
        <div class="px-6 py-3">
          <div class="flex items-center justify-between pb-4">
            <div>
              <h1 class="text-2xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Playlist</h1>
              <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">Get Better Recommendations The More You Listen.</h2>
            </div>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="playlist in playlists" :key="playlist.id" class="p-2 relative" style="width: 12rem; margin-right: 11px">
              <router-link :to="`/playlist-detail/${playlist.id}`">
                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img class="h-auto w-full shadow mb-2" :src="`${ playlist.image_url }`" alt="cover_card">
                  <h1 class="text-sm font-semibold text-white tracking-wide">{{ playlist.name }}</h1>
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
import ClientNavbar from "@/components/Navbars/clientNavbar";
import ClientSidebar from "@/components/Sidebar/clientSidebar";
import PlayBar from "@/components/Others/playBar";
import axios from "axios";
export default {
  name: "YourLibrary",
  components: {PlayBar, ClientSidebar, ClientNavbar},
  data: function () {
    return {
      // Call Out Data?
      playlists: [],
    }
  },

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/playlist/get-list', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.playlists = res.data.data

    } catch (e) {
      console.error(e)
    }
  },
}
</script>

<style scoped>

</style>