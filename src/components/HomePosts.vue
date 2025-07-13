<template>
    <v-container v-if="loading" class="text-center">
        <v-progress-circular indeterminate color="primary"></v-progress-circular>
    </v-container>
    <v-container v-else v-for="post in posts" :key="post.id" class="pa-0 fade-in">
        <v-card style="border-radius: 0px !important;">
            <!--Cabeçalho do post-->
            <v-card-text class="d-flex align-center justify-start">
                <v-avatar size="32" class="mr-2">
                    <v-img :alt="post.userName" :src="post.userImage" :lazy-src="post.userImage"></v-img>
                </v-avatar>

                <span>
                    <b>
                        {{ post.userName }}
                    </b>
                </span>
            </v-card-text>

            <!--Foto do post-->
            <v-img :src="post.image" :lazy-src="post.image" />

            <!--Ações do post-->
            <v-card-actions>
                <v-btn icon @click="likePost(post.id)">
                    <v-icon>mdi-heart</v-icon>
                    {{ post.likes }}
                </v-btn>
                <v-btn icon @click="commentPost(post.id)">
                    <v-icon>mdi-comment</v-icon>
                </v-btn>
                <v-btn icon>
                    <v-icon>mdi-share</v-icon>
                </v-btn>
                <v-btn icon @click="savePost(post.id)" class="ml-auto">
                    <v-icon>mdi-bookmark</v-icon>
                </v-btn>
            </v-card-actions>

            <!--Conteúdo do post-->
            <v-card-text>
                <p>{{ post.content }}</p>
            </v-card-text>
        </v-card>
    </v-container>
</template>

<script>
export default {
    data() {
        return {
            loading: true, // Adicionado para controlar o estado de carregamento
            posts: [],
        };
    },
    async created() {
        await this.fetchPosts();
        console.log('Posts fetched successfully');
    },
    methods: {
        likePost(id) {
            const post = this.posts.find(post => post.id === id);
            if (post) {
                post.likes++;
            }
        },
        commentPost(id) {
            console.log(`Commenting on post ${id}`);
        },
        savePost(id) {
            console.log(`Saving post ${id}`);
        },
        async fetchPosts() {
            console.log('Fetching posts...');
            this.loading = true; // Inicia o estado de carregamento

            // Simula uma chamada assíncrona com um delay
            await new Promise(resolve => setTimeout(resolve, 250));

            this.posts = [
                { id: 1, userName: 'John Doe', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 1', likes: 10, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
                { id: 2, userName: 'Jane Smith', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 2', likes: 20, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
                { id: 3, userName: 'Alice Brown', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 3', likes: 15, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
                { id: 4, userName: 'Bob Green', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 4', likes: 25, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
                { id: 5, userName: 'Charlie White', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 5', likes: 30, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
                { id: 6, userName: 'Diana Black', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', content: 'Post 6', likes: 40, image: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%2Fid%2FOIP.MInViflWTn0CIsOU3esbLwHaE5%3Fr%3D0%26pid%3DApi&f=1&ipt=84e6cd04e0d996f000ba961d1901d9f9c112e30fa807eb4069210a6b8da516ed&ipo=images' },
            ];

            this.loading = false; // Finaliza o estado de carregamento
        },
    },
};
</script>

<style scoped></style>
