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
            <h1 class="text-4xl font-semibold text-white tracking-wide hover:underline" style="padding-left: 0.5rem">Artists</h1>
            <h2 class="ml-2 text-sm tracking-wide hover:underline " style="color: #B3B3B3; padding-top: 0.5rem">Music shouldn't be just a tune, it should be a touch.</h2>
          </div>
          <div class="pt-2 w-full flex flex-wrap">
            <div v-for="singer in singers" :key="singer.id" class="p-2 relative" style="width: 19.5rem; margin-right: 11px">
              <router-link :to="`/artists_detail/${singer.id}`">
                <div class="w-full h-auto p-5 rounded-lg shadow-md" style="background: #282828">
                  <img style="object-fit: cover; width: 500px; height: 260px" class="h-auto w-full shadow mb-2" :src="`${ singer.image_url }`" alt="cover_card">
                  <h1 class="text-lg font-semibold text-white text-center p-5 tracking-wide">{{ singer.name }}</h1>
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
  name: "Artists",
  components: {PlayBar, ClientNavbar, ClientSidebar},
  data: function () {
    return {
      // Call Out Data?
      singers: [],
    }
  },
  async created() {
    try {
      const res = await axios.get('http://localhost:8080/author/get-all', {
        headers: {
          "Authorization": localStorage.getItem('token')
        }
      });
      console.log(res.data.data)
      this.singers = res.data.data

    } catch (e) {
      console.error(e)
    }
  },
}
</script>

<style scoped>

</style>