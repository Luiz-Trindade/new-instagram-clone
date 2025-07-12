<template>
  <v-app-bar scroll-behavior="hide" class="background-blur elevation-4" theme="system" color="primary" dark>
    <template #title>
      <span class="cursive-title">
        <b>
          Instagram
        </b>
      </span>
    </template>

    <v-btn class="ml-auto" icon>
      <v-icon>mdi-heart</v-icon>
    </v-btn>

    <v-btn icon>
      <v-icon>mdi-send</v-icon>
    </v-btn>
  </v-app-bar>

  <home-posts></home-posts>
</template>

<script setup>
// 
</script>

<style>
.cursive-title {
  font-size: 24px;
  font-family: cursive;
}
</style>
