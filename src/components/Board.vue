<template>

  <table
    id="board"
    cellspacing="0"
    cellpadding="0"
  >
    <tr>
      <ColorHome color="yellow" />

      <Step :number="11" />
      <Step
        :number="12"
        green
        entrance
      />
      <Step :number="13" />

      <ColorHome color="green" />
    </tr>

    <tr>
      <Step :number="10" />
      <Step
        :number="1"
        green
        corridor
      />
      <Step
        :number="14"
        green
        start
      />
    </tr>

    <tr>
      <Step :number="9" />
      <Step
        :number="2"
        green
        corridor
      />
      <Step :number="15" />
    </tr>
    <tr>
      <Step :number="8" />
      <Step
        :number="3"
        green
        corridor
      />
      <Step :number="16" />
    </tr>
    <tr>
      <Step :number="7" />
      <Step
        :number="4"
        green
        corridor
      />
      <Step :number="17" />
    </tr>
    <tr>
      <Step :number="6" />
      <Step
        :number="5"
        green
        corridor
      />
      <Step :number="18" />
    </tr>
    <tr>
      <Step :number="52" />
      <Step
        :number="1"
        yellow
        start
      />
      <Step :number="2" />
      <Step :number="3" />
      <Step :number="4" />
      <Step
        :number="5"
        arrow="ne"
      />

      <Center />

      <Step
        :number="19"
        arrow="se"
      />
      <Step :number="20" />
      <Step :number="21" />
      <Step :number="22" />
      <Step :number="23" />
      <Step :number="24" />
    </tr>
    <tr>
      <Step
        :number="51"
        yellow
        entrance
      />
      <Step
        :number="1"
        yellow
        corridor
      />
      <Step
        :number="2"
        yellow
        corridor
      />
      <Step
        :number="3"
        yellow
        corridor
      />
      <Step
        :number="4"
        yellow
        corridor
      />
      <Step
        :number="5"
        yellow
        corridor
      />
      <Step
        :number="5"
        red
        corridor
      />
      <Step
        :number="4"
        red
        corridor
      />
      <Step
        :number="3"
        red
        corridor
      />
      <Step
        :number="2"
        red
        corridor
      />
      <Step
        :number="1"
        red
        corridor
      />
      <Step
        :number="25"
        red
        entrance
      />
    </tr>
    <tr>
      <Step :number="50" />
      <Step :number="49" />
      <Step :number="48" />
      <Step :number="47" />
      <Step :number="46" />
      <Step
        :number="45"
        arrow="nw"
      />
      <Step
        :number="31"
        arrow="sw"
      />
      <Step :number="30" />
      <Step :number="29" />
      <Step :number="28" />
      <Step
        :number="27"
        red
        start
      />
      <Step :number="26" />
    </tr>
    <tr>
      <ColorHome color="blue" />

      <Step :number="44" />
      <Step
        :number="5"
        blue
        corridor
      />
      <Step :number="32" />

      <ColorHome color="red" />
    </tr>
    <tr>
      <Step :number="43" />
      <Step
        :number="4"
        blue
        corridor
      />
      <Step :number="33" />
    </tr>
    <tr>
      <Step :number="42" />
      <Step
        :number="3"
        blue
        corridor
      />
      <Step :number="34" />
    </tr>
    <tr>
      <Step :number="41" />
      <Step
        :number="2"
        blue
        corridor
      />
      <Step :number="35" />
    </tr>
    <tr>
      <Step
        :number="40"
        blue
        start
      />
      <Step
        :number="1"
        blue
        corridor
      />
      <Step :number="36" />
    </tr>
    <tr>
      <Step :number="39" />
      <Step
        :number="38"
        blue
        entrance
      />
      <Step :number="37" />
    </tr>
  </table>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import ColorHome from "./ColorHome.vue";
import Step from "./Step.vue";
import Center from "./Center.vue";

export default {
  name: "Board",
  components: { ColorHome, Step, Center }
};
</script>

<style lang="scss">
table {
  border: 1px solid;
  height: 100%;
  width: 100%;

  td {
    height: calc(100% / 14 + 3px);
    width: calc(100% / 14 + 3px);
    border: 1px solid;
    background-color: whitesmoke;
    position: relative;
  }
}
</style>