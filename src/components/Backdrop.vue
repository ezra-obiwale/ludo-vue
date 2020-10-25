<template>
  <div id="backdrop">
    <Options />

    <Movements />

    <StepPieces v-if="stepPieces" />
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Options from "./Options.vue";
import Movements from "./Movements.vue";
import StepPieces from "./StepPieces.vue";

export default defineComponent({
  name: "Backdrop",
  components: { Options, Movements, StepPieces },
  props: {
    stepPieces: {
      type: Boolean,
      default: false
    }
  }
});
</script>

<style lang="scss" scoped>
#backdrop {
  position: absolute;
  top: 0;
  width: 100vh;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 9;

  @media (max-width: 767px) {
    width: 100vw;
    height: 100vh;
  }
}
</style>