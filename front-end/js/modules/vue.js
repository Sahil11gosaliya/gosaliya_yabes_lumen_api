export function vue() {
    const { createApp } = Vue;

    createApp({
        created() {
            // Fetch characters from a public API
            fetch('http://localhost/wizarding_world_API_mashup/lumen/public/characters')
                .then(res => res.json())
                .then(data => {
                    this.charactersData = data;
                })
                .catch(error => {
                    console.error(error);
                    this.error = 'An error occurred while fetching the characters.';
                });
        },

        data() {
            return {
                showLightbox: false,
                charactersData: [],
                characterName: "",
                selectedCharacter: {},
                species: "",
                gender: "",
                house: "",
                dateOfBirth: "",
                yearOfBirth: "",
                wizard: "",
                ancestry: "",
                eyeColour: "",
                hairColour: "",
                patronus: "",
                hogwartsStudent: "",
                hogwartsStaff: "",
                alive: "",
                actor: "",
                error: ""
            }
        },

        methods: {
            getCharacter(characterName) {
                this.showLightbox = true;
                this.selectedCharacter = this.charactersData.find(char => char.name === characterName);
                this.characterName = "";
                this.species = "";
                this.gender = "";
                this.house = "";
                this.dateOfBirth = "";
                this.yearOfBirth = "";
                this.wizard = "";
                this.ancestry = "";
                this.eyeColour = "";
                this.hairColour = "";
                this.patronus = "";
                this.hogwartsStudent = "";
                this.hogwartsStaff = "";
                this.alive = "";
                this.actor = "";
                this.error = "";


                fetch(`https://potterhead-api.vercel.app/api/characters`)
                    .then(res => res.json())
                    .then(data => {
                        const character = data.find(char => char.name === characterName);
                        if (character) {
                            this.characterImage = this.selectedCharacter.image || '';
                            this.characterName = character.name;
                            this.species = character.species || 'Unknown';
                            this.gender = character.gender || 'Unknown';
                            this.house = character.house || 'Unknown';
                            this.dateOfBirth = character.dateOfBirth || 'Unknown';
                            this.yearOfBirth = character.yearOfBirth || 'Unknown';
                            this.wizard = character.wizard || 'Not Known';
                            this.ancestry = character.ancestry || 'Unknown';
                            this.eyeColour = character.eyeColour || 'Unknown';
                            this.hairColour = character.hairColour || 'Unknown';
                            this.patronus = character.patronus || 'Unknown';
                            this.hogwartsStudent = character.hogwartsStudent || 'Unknown';
                            this.hogwartsStaff = character.hogwartsStaff || 'Unknown';
                            this.alive = character.alive || 'Unknown';
                            this.actor = character.actor || 'Unknown';
                        } else {
                            this.error = 'No character found with the given name.';
                        }
                    })
                    .catch(error => {
                        console.error(error);
                        this.error = 'An error occurred while fetching character details.';
                    });
            },
            closeLightbox() {
                this.showLightbox = false;
            },
        },
    }).mount('#app');


};