<template>
    <v-bottom-navigation class="background-blur elevation-4" v-model="active_page">
        <v-btn icon value="home" @click="navigateTo('/')">
            <v-icon>mdi-home</v-icon>
        </v-btn>

        <v-btn icon value="search" @click="navigateTo('/search')">
            <v-icon>mdi-magnify</v-icon>
        </v-btn>

        <v-btn icon value="new-post" @click="navigateTo('/new-post')">
            <v-icon>mdi-plus-box</v-icon>
        </v-btn>

        <v-btn icon value="shorts" @click="navigateTo('/shorts')">
            <v-icon>mdi-video</v-icon>
        </v-btn>

        <v-btn icon value="account" @click="navigateTo('/account')">
            <v-icon>mdi-account-circle</v-icon>
        </v-btn>
    </v-bottom-navigation>
</template>

<script>
export default {
    name: 'BottomNavigation',
    data() {
        return {
            active_page: 'home', // Default active page
        };
    },
    methods: {
        navigateTo(routeName) {
            this.$router.push({ name: routeName });
        },
    },
};
</script>

<style scoped>
</style>