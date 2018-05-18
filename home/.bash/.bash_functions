#!/bin/bash
function settitle() {
      echo -ne "\e]0;$1\a"
}
