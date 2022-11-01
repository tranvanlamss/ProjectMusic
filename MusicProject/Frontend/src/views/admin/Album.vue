<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 mx-auto w-full">

          <div class="overflow-x-auto relative">
            <router-link
                to="/admin/createalbum"
            >
              <button style="background-color:lightgreen" class="bg-transparent hover:bg-blue-500 text-blue-700 font-semibold hover:text-blueGray-300 py-2 px-4 border border-blue-500 hover:border-transparent rounded">

              Add Album
              </button>
            </router-link>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
              <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th scope="col" class="py-3 px-6">
                  Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Name
                </th>
                <th scope="col" class="py-3 px-6">
                  Album_artist
                </th>
                <th scope="col" class="py-3 px-6">
                  Album_art
                </th>
                <th scope="col" class="py-3 px-6">
                  Lyrics
                </th>
                <th scope="col" class="py-3 px-6">
                  Status
                </th>
                <th scope="col" class="py-3 px-6">
                  Action
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="album in albums" :key="album.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{album.id}}
                </th>
                <td class="py-4 px-6">
                  {{album.name}}
                </td>
                <td class="py-4 px-6">
                  {{album.album_artist}}
                </td>
                <td class="py-4 px-6">
                  <img :src="album.album_art" class="h-auto shadow mb-2" style="width: 30%"/>
                </td>
                <td class="py-4 px-6">
                  {{album.lyric}}
                </td>
                <td class="py-4 px-6">
                  {{album.deleted}}
                </td>
                <td class="py-4 ">
                  <router-link :to="`/admin/editalbum/${albums.id}`" > <button   style="background-color:#64bded"  class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-4 hover:border-transparent rounded">Edit</button></router-link>
                  <button style="background-color:rgba(255,0,0,0.75)" class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-2 hover:border-transparent rounded" @click="deleteAlbum(albums.id)">Delete</button>
                </td>
              </tr>
              </tbody>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
</template>
<script>
import CardTable from "@/components/Cards/CardTable.vue";
import axios from "axios";

export default {
  components: {
    CardTable,
  },
  data: () => ({
    albums: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/album/get-list', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.albums = res.data;
      console.warn(res.data.data)
      this.albums = res.data.data
      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  },

  methods: {
    deleteAlbum(id) {
      let text = "Are You ACTUALLY Want To Delete It!";
      if (confirm(text) == true) {
        axios.delete("http://localhost:8080/album/delete/" + id,{
          headers: {
            "Authorization" : localStorage.getItem('token_admin')
          }
        })
            .then((res) => {
              console.log(res)
            })
            .catch(function (error) {
              console.log(error.res)
            })
      } else {
        return;
      }

    }
  }
};
</script>