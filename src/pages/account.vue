<template>
    <v-container>
        <!-- Cabeçalho do perfil -->
        <v-row align="center" class="mb-4">
            <v-col cols="2">
                <v-avatar size="70" class="profile-avatar">
                    <v-img src="https://cdn.vuetifyjs.com/images/lists/1.jpg"></v-img>
                </v-avatar>
            </v-col>
    
            <v-col cols="10">
                <div class="d-flex flex-column align-center">
                    <h3 class="username">@usuário</h3>
    
                    <v-row class="stats mt-2">
                        <v-col v-for="stat in stats" :key="stat.label" class="text-center">
                            <div class="stat-value">{{ stat.value }}</div>
                            <div class="stat-label">{{ stat.label }}</div>
                        </v-col>
                    </v-row>
                </div>
            </v-col>
        </v-row>
    
        <!-- Galeria de imagens -->
        <v-row dense class="gallery">
            <v-col v-for="(image, index) in validImages" :key="index" cols="4" class="gallery-item">
                <v-img :src="image" aspect-ratio="1" @click="openImage(image)"></v-img>
            </v-col>
        </v-row>
    </v-container>
</template>

<script>
const SAMPLE_IMAGES = [
    'https://cdn.vuetifyjs.com/images/cards/sunshine.jpg',
    'https://cdn.vuetifyjs.com/images/cards/road.jpg',
    'https://cdn.vuetifyjs.com/images/cards/plane.jpg',
    'https://cdn.vuetifyjs.com/images/cards/house.jpg',
    'https://cdn.vuetifyjs.com/images/cards/mountain.jpg',
    'https://cdn.vuetifyjs.com/images/cards/forest.jpg',
    'https://cdn.vuetifyjs.com/images/cards/sunshine.jpg',
    'https://cdn.vuetifyjs.com/images/cards/road.jpg',
    'https://cdn.vuetifyjs.com/images/cards/plane.jpg',
    'https://cdn.vuetifyjs.com/images/cards/house.jpg',
    'https://cdn.vuetifyjs.com/images/cards/mountain.jpg',
    'https://cdn.vuetifyjs.com/images/cards/forest.jpg',
];

export default {
    data() {
        return {
            stats: [
                { label: 'Publicações', value: 10 },
                { label: 'Seguidores', value: 100 },
                { label: 'Seguindo', value: 50 }
            ],
            images: SAMPLE_IMAGES
        }
    },
    computed: {
        validImages() {
            return this.images.filter(img =>
                img.startsWith('https://') &&
                (img.endsWith('.jpg') || img.endsWith('.png'))
            );
        }
    },
    methods: {
        openImage(image) {
            // Aqui você pode implementar a lógica para abrir a imagem em tela cheia
            console.log('Abrir imagem:', image);
            // this.$emit('image-clicked', image);
        }
    }
}
</script>

<style scoped>
.profile-avatar {
    border: 2px solid #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.username {
    font-weight: 500;
    margin-bottom: 4px;
}

.stat-value {
    font-weight: bold;
    font-size: 1.1rem;
}

.stat-label {
    font-size: 0.8rem;
    color: #666;
}

.gallery-item {
    padding: 1px !important;
    cursor: pointer;
    transition: transform 0.2s;
}

.gallery-item:hover {
    transform: scale(0.98);
}
</style>