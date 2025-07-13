<template>
  <v-app-bar class="elevation-4">
    <template #title>
      <span class="cursive-title">
        <b>
          Instagram
        </b>
      </span>
    </template>

    <v-btn class="ml-auto" icon @click="navigateTo('/notifications')">
      <v-icon>mdi-heart</v-icon>
    </v-btn>

    <v-btn icon @click="navigateTo('/direct')">
      <v-icon>mdi-send</v-icon>
    </v-btn>
  </v-app-bar>

  <home-posts></home-posts>
</template>

<script>
export default {
  name: 'Home',
  methods: {
    navigateTo(routeName) {
      this.$router.push({ name: routeName });
    },
  },
};
</script>

<style>
.cursive-title {
  font-size: 24px;
  font-family: cursive;
}
</style>
