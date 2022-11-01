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
            <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Music Videos</h1>
            <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">With a film, you can get into it and love it. With music, you can listen to over and over again, but with music videos, they're like this short little stab.</h2>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="video in videos" :key="video.id" class="p-2 relative" style="width: 19.5rem; margin-right: 11px">
              <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                <img class="h-auto w-full shadow mb-2" style="object-fit: cover; height: 150px" :src="`${video.thumbnail}`" alt="cover_card">
                <h1 class="text-sm font-semibold text-white tracking-wide">{{ video.name }}</h1>
              </div>
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
import PlayBar from "@/components/Others/playBar";
import ClientNavbar from "@/components/Navbars/clientNavbar";
import ClientSidebar from "@/components/Sidebar/clientSidebar";
import axios from "axios";
export default {
  name: "MusicVideo",
  components: {ClientSidebar, ClientNavbar, PlayBar},
  data: function () {
    return {
      // Call Out Data?
      videos: [],
    }
  },
  async created() {
    try {
      const res = await axios.get('http://localhost:8080/mv/get-all', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.videos = res.data.data

    } catch (e) {
      console.error(e)
    }
  },
}
</script>

<style scoped>

</style>