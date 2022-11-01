<template>
  <div>
    <div>
      <div class="relative  md:pt-32 pb-32 pt-12">
        <div class="px-4 mx-auto w-full">

          <div class="overflow-x-auto relative">
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
              <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th scope="col" class="py-3 px-6">
                  Id
                </th>
                <th scope="col" class="py-3 px-6">
                  Like_mv
                </th>
                <th scope="col" class="py-3 px-6">
                  Mv_id
                </th>
                <th scope="col" class="py-3 px-6">
                  User_id
                </th>
                <th scope="col" class="py-3 px-6">
                  Created_at
                </th>
                <th scope="col" class="py-3 px-6">
                  Updated_at
                </th>
                <th scope="col" class="py-3 px-6">
                  Deleted
                </th>
                <th scope="col" class="py-3 px-6">
                  Action
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="likemv in likeMvs" :key="likemv.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{likemv.id}}
                </th>
                <td class="py-4 px-6">
                  {{likemv.like_mv}}
                </td>
                <td class="py-4 px-6">
                  {{likemv.mv_id}}
                </td>
                <td class="py-4 px-6">
                  {{likemv.user_id}}
                </td>
                <td class="py-4 px-6">
                  {{likemv.created_at}}
                </td>
                <td class="py-4 px-6">
                  {{likemv.updated_at}}
                </td>
                <td class="py-4 px-6">
                  {{likemv.deleted}}
                </td>
                <td class="py-4 ">
                  <button style="background-color:rgba(255,0,0,0.75)" class="bg-blue-500 hover:bg-blue-700 font-bold py-2 px-2 hover:border-transparent rounded" @click="deleteLikeMv(likemv.id)">Delete</button>
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
import axios from "axios";

export default {
  name: "LikeMv",

  data: () => ({
    likeMvs: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/like-mv/get-all', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });
      this.likeMvs = res.data;
      console.warn(res.data.data)
      this.likeMvs = res.data.data
      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  },

  methods: {
    deleteLikeMv(id) {
      let text = "Are You ACTUALLY Want To Delete It!";
      if (confirm(text) == true) {
        axios.delete("http://localhost:8080/like-mv/delete/" + id,{
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
}
</script>

<style scoped>

</style>