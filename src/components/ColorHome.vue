<template>
  <td
    :class="`home no-color ${color}`"
    colspan="6"
    rowspan="6"
  >
    <Piece :color="color" />
    <Piece :color="color" />
    <Piece :color="color" />
    <Piece :color="color" />

    <div class="playing hide">PLAYING</div>

    <PieceCover>
      <RollButton class="desktop" />
    </PieceCover>
  </td>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Piece from "./Piece.vue";
import PieceCover from "./PieceCover.vue";
import RollButton from "./RollButton.vue";

export default defineComponent({
  name: "ColorHome",
  components: { Piece, PieceCover, RollButton },
  props: {
    color: {
      type: String,
      required: true,
      validator(value: string) {
        return ["yellow", "green", "blue", "red"].includes(value);
      }
    }
  }
});
</script>

<style lang="scss">
.home {
  .piece {
    width: 20%;
    height: auto;
    padding-bottom: 20%;

    & > div {
      border-color: aqua;
    }

    &:nth-child(1),
    &:nth-child(2) {
      top: 5%;
    }

    &:nth-child(3),
    &:nth-child(4) {
      bottom: 5%;
      top: unset;
    }

    &:nth-child(1),
    &:nth-child(3) {
      left: 5%;
    }

    &:nth-child(2),
    &:nth-child(4) {
      right: 5%;
    }

    &:nth-child(3) > div,
    &:nth-child(4) > div {
      padding-top: 70%;
      padding-bottom: 0;
    }
  }

  .roll,
  .playing {
    position: absolute;
    padding: 16px;
    border-radius: 16px;
    left: calc(50% - 65px);
    top: calc(50% - 30px);
  }

  .playing {
    background-color: sienna;
    color: aliceblue;
    animation-name: playing;
    animation-duration: 4s;
    animation-iteration-count: infinite;
  }

  @media (max-width: 767px) {
    .playing {
      position: absolute;
      padding: 7px;
      border-radius: 16px;
      left: calc(50% - 43px);
      top: calc(50% - 15px);
    }
  }
}

@keyframes playing {
  from {
    background-color: sienna;
  }

  to {
    background-color: slategrey;
  }
}
</style>

<style lang="scss" scoped>
.home {
  background-color: bisque !important;
  background-size: cover;
  position: relative;
}

.yellow.home {
  background-image: url(/img/earth.png);
}

.green.home {
  background-image: url(/img/air.png);
}

.blue.home {
  background-image: url(/img/water.png);
}

.red.home {
  background-image: url(/img/fire.png);
}
</style>