<template>
    <v-app-bar>
        <v-btn icon @click="$router.go(-1)">
            <v-icon>mdi-arrow-left</v-icon>
        </v-btn>

        <v-toolbar-title>Notifications</v-toolbar-title>
    </v-app-bar>

    <v-container class="pa-2">
        <v-list>
            <v-list-item v-for="notification in notifications" :key="notification.id">
                <v-list-item-content>
                    <v-list-item-title>{{ notification.message }}</v-list-item-title>
                    <v-list-item-subtitle>{{ notification.timestamp }}</v-list-item-subtitle>
                </v-list-item-content>
            </v-list-item>
        </v-list>
    </v-container>
</template>

<script>
export default {
    name: 'Notifications',
    data() {
        return {
            notifications: [], // Placeholder for notifications data
        };
    },
    async created() {
        // Fetch notifications when the component is created
        this.fetchNotifications();
    },
    methods: {
        fetchNotifications() {
            // Simulate fetching notifications from an API
            this.notifications = [
                { id: 1, message: 'User1 liked your post', timestamp: '2 minutes ago' },
                { id: 2, message: 'User2 started following you', timestamp: '5 minutes ago' },
                { id: 3, message: 'User3 commented on your photo', timestamp: '10 minutes ago' },
                { id: 4, message: 'User4 shared your post', timestamp: '15 minutes ago' },
                { id: 5, message: 'User5 mentioned you in a comment', timestamp: '20 minutes ago' },
                { id: 6, message: 'User6 liked your comment', timestamp: '25 minutes ago' },
                { id: 7, message: 'User7 tagged you in a post', timestamp: '30 minutes ago' },
                { id: 8, message: 'User8 replied to your story', timestamp: '35 minutes ago' },
                { id: 9, message: 'User9 sent you a message', timestamp: '40 minutes ago' },
                { id: 10, message: 'User10 followed your profile', timestamp: '45 minutes ago' },
                { id: 11, message: 'User11 liked your photo', timestamp: '50 minutes ago' },
                { id: 12, message: 'User12 shared your story', timestamp: '55 minutes ago' },
                { id: 13, message: 'User13 commented on your video', timestamp: '1 hour ago' },
                { id: 14, message: 'User14 started following your page', timestamp: '1 hour 5 minutes ago' },
                { id: 15, message: 'User15 mentioned you in their story', timestamp: '1 hour 10 minutes ago' },
            ];
        },
    },
};
</script>

<style scoped>
</style>