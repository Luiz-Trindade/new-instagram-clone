<template>
  <v-main>
    <router-view />
  </v-main>

  <bottom-navigation />
</template>

<script setup>
  //
</script>

<style>
.background-blur {
    backdrop-filter: blur(5px) !important;
    background-color: rgba(0, 0, 0, 0.25) !important;
}
</style>
