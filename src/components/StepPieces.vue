<template>
  <div
    id="step-pieces"
    class="hide"
  >
    <div class="step-pieces">
      <Piece :color="color1" />
      <Piece :color="color2" />
    </div>

    <div class="message"></div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Piece from './Piece.vue'

export default defineComponent({
  name: "StepPieces",
  components: { Piece },
  props: {
    color1: {
      type: String,
      required: true
    },
    color2: {
      type: String,
      required: true
    }
  }
});
</script>

<style lang="scss">
#step-pieces {
  .piece {
    width: 6vh;
    height: 6vh;
    position: relative;
  }
}
</style>

<style lang="scss" scoped>
#step-pieces {
  min-width: 20vw;
  max-width: 80vw;
  background-color: bisque;
  padding: 20px;
  background-color: bisque !important;
  background-size: cover;
  position: relative;

  .step-pieces {
    display: flex;
    justify-content: space-evenly;
    align-items: center;

    .piece {
      padding: 20px;
      border: 2px dashed;
    }
  }

  .message {
    background-color: tomato;
    color: whitesmoke;
    width: 100%;
    padding: 5px;
    text-align: center;
    margin-top: 10px;
  }
}
</style>