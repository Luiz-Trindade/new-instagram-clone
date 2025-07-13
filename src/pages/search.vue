<template>
    <v-text-field class="pa-2 mt-4 rounded" placeholder="Search" prepend-inner-icon="mdi-magnify" outlined
        dense variant="solo"></v-text-field>

    <v-container>
        <v-row class="pa-0">
            <v-col v-for="(image, index) in images" :key="index" cols="4" class="pa-0">
                <v-img :src="image" class="flat" @click="console.log('oi')"></v-img>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
export default {
    data() {
        return {
            images: [
                'https://cdn.vuetifyjs.com/images/cards/sunshine.jpg',
                'https://cdn.vuetifyjs.com/images/cards/road.jpg',
                'https://cdn.vuetifyjs.com/images/cards/plane.jpg',
                'https://cdn.vuetifyjs.com/images/cards/house.jpg',
                'https://cdn.vuetifyjs.com/images/cards/mountain.jpg',
                'https://cdn.vuetifyjs.com/images/cards/forest.jpg',
                'https://cdn.vuetifyjs.com/images/cards/beach.jpg',
                'https://cdn.vuetifyjs.com/images/cards/river.jpg',
                'https://cdn.vuetifyjs.com/images/cards/city.jpg',
                'https://cdn.vuetifyjs.com/images/cards/bridge.jpg',
                'https://cdn.vuetifyjs.com/images/cards/sky.jpg',
                'https://cdn.vuetifyjs.com/images/cards/flower.jpg',
                'https://cdn.vuetifyjs.com/images/cards/boat.jpg',
                'https://cdn.vuetifyjs.com/images/cards/desert.jpg',
                'https://cdn.vuetifyjs.com/images/cards/lake.jpg',
                'https://cdn.vuetifyjs.com/images/cards/park.jpg',
                'https://cdn.vuetifyjs.com/images/cards/forest-path.jpg',
                'https://cdn.vuetifyjs.com/images/cards/rock.jpg',
                'https://cdn.vuetifyjs.com/images/cards/snow.jpg',
                'https://cdn.vuetifyjs.com/images/cards/valley.jpg',
                'https://cdn.vuetifyjs.com/images/cards/field.jpg',
                'https://cdn.vuetifyjs.com/images/cards/skyline.jpg',
                'https://cdn.vuetifyjs.com/images/cards/road-trip.jpg',
                'https://cdn.vuetifyjs.com/images/cards/cabin.jpg',
                'https://cdn.vuetifyjs.com/images/cards/forest.jpg', // Added duplicate for testing
                'https://cdn.vuetifyjs.com/images/cards/invalid.jpg', // Invalid URL for testing
            ]
        };
    }
};
</script>

<style scoped></style>