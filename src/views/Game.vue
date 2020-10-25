<template>
  <div id="play-area">
    <div class="github">
      <a
        href="https://github.com/ezra-obiwale/ludo-jq"
        target="_blank"
        class="regular"
      >GitHub</a>
    </div>

    <Dice />

    <Board />

    <CenterMessage class="mobile" />

    <RollButton class="mobile" />

    <Backdrop />
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Dice from "@/components/Dice.vue";
import Board from "@/components/Board.vue";
import CenterMessage from "@/components/CenterMessage.vue";
import Backdrop from "@/components/Backdrop.vue";
import RollButton from "@/components/RollButton.vue";

export default defineComponent({
  name: "Game",
  components: { Dice, Board, CenterMessage, Backdrop, RollButton }
});
</script>

<style lang="scss" scoped>
#play-area {
  position: relative;
  width: 100vh;
  height: 100vh;
  margin: auto;

  @media (max-width: 767px) {
    width: 100vw;
    height: 100vw;
  }
}
</style>