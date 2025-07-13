<template>
    <v-app-bar>
        <v-btn icon @click="$router.go(-1)">
            <v-icon>mdi-arrow-left</v-icon>
        </v-btn>

        <v-toolbar-title>Direct Messages</v-toolbar-title>
    </v-app-bar>
    <div class="slide-in">
    
        <v-text-field 
            class="pa-4 rounded" 
            placeholder="Search messages" 
            prepend-inner-icon="mdi-magnify" 
            outlined 
            dense 
            v-model="searchQuery" 
            @keyup.enter="searchMessages">
        </v-text-field>
    
        <v-container>
            <v-card v-for="message in filteredMessages" :key="message.id" class="mb-2">
                <v-card-title class="d-flex align-center">
                    <v-avatar size="32">
                        <v-img :src="message.userImage" alt="User Avatar"></v-img>
                    </v-avatar>
    
                    <span class="ml-2">{{ message.userName }}</span>
                </v-card-title>
                <v-card-text>{{ message.text }}</v-card-text>
            </v-card>
        </v-container>
    </div>
</template>

<script>
export default {
    data() {
        return {
            messages: [
                // Example data
                { id: 1, userName: 'John Doe', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', text: 'Hello!' },
                { id: 2, userName: 'Jane Smith', userImage: 'https://cdn.vuetifyjs.com/images/john.jpg', text: 'How are you?' },
            ],
            searchQuery: '', // Search input binding
        };
    },
    computed: {
        filteredMessages() {
            // Filter messages based on search query
            return this.messages.filter(message =>
                message.userName.toLowerCase().includes(this.searchQuery.toLowerCase()) ||
                message.text.toLowerCase().includes(this.searchQuery.toLowerCase())
            );
        },
    },
    methods: {
        searchMessages() {
            console.log('Searching messages for:', this.searchQuery);
        },
    },
}
</script>

<style scoped>
/* Add any custom styles here */
</style>