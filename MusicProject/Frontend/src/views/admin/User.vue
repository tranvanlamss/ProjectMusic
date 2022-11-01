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
                  Username
                </th>
                <th scope="col" class="py-3 px-6">
                  Email
                </th>
                <th scope="col" class="py-3 px-6">
                  Avatar
                </th>
                <th scope="col" class="py-3 px-6">
                  Banner
                </th>
                <th scope="col" class="py-3 px-6">
                  Thone
                </th>
                <th scope="col" class="py-3 px-6">
                  Type
                </th>
                <th scope="col" class="py-3 px-6">
                  Status
                </th>
                <th scope="col" class="py-3 px-6">
                  Role_id
                </th>
              </tr>
              </thead>
              <tbody>
              <tr v-for="user in users" :key="user.id" class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
                <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                  {{user.id}}
                </th>
                <td class="py-4 px-6">
                  {{user.username}}
                </td>
                <td class="py-4 px-6">
                  {{user.email}}
                </td>
                <td class="py-4 px-6">
                  {{user.avatar}}
                </td>
                <td class="py-4 px-6">
                  {{user.banner}}
                </td>
                <td class="py-4 px-6">
                  {{user.thone}}
                </td>
                <td class="py-4 px-6">
                  {{user.type}}
                </td>
                <td class="py-4 px-6">
                  {{user.status}}
                </td>
                <td class="py-4 px-6">
                  {{user.role_id}}
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
    users: [],
  }),

  async created() {
    try {
      const res = await axios.get('http://localhost:8080/user/get-list', {
        headers: {
          "Authorization" : localStorage.getItem('token_admin')
        }
      });

      this.users = res.data;
      console.warn(res.data.data)
      this.users = res.data.data
      // console.log(res.data.data)

    }catch (e){
      console.error(e)
    }
  }
};
</script>