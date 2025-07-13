<template>
    <v-container>
        <v-card v-for="(post, index) in posts" :key="index">
            <iframe
                :src="post.video"
                class="full-screen-video"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen
            ></iframe>
        </v-card>
    </v-container>
</template>

<script>
export default {
    data() {
        return {
            loading: true,
            posts: [
                {
                    id: 1,
                    userName: 'user1',
                    video: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images',
                    likes: 10,
                    content: 'Beautiful day at the beach!'
                },
                {
                    id: 2,
                    userName: 'user2',
                    video: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images',
                    likes: 20,
                    content: 'Road trip adventures!'
                },
            ],
        };
    },
}
</script>

<style scoped>
.full-screen-video {
    width: 100vw;
    height: 100vh;
}
</style>