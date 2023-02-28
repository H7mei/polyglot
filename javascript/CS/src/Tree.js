import React from 'react';
import './tree.css';
import {TreeViz} from './tree-visualizer';
import _ from 'lodash';

class Node {
  constructor(value = null, left = null, right = null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
  serialize() {
    const ans = {value: this.value};
    ans.left = this.left ? this.left.serialize() : null;
    ans.right = this.right ? this.right.serialize() : null;
    return ans;
  }
}

class Tree {
  constructor() {
    this.root = null;
  }
  add(value) {
    if (this.root === null) this.root = new Node(value);
    else {
      let current = this.root;
      while (true) {
        if (current.value > value) {
          if (current.left) current = current.left;
          else {
            current.left = new Node(value);
            break;
          }
        } else {
          if (current.right) current = current.right;
          else {
            current.right = new Node(value);
            break;
          }
        }
      }
    }
    return this;
  }
  toJSON() {
    return JSON.stringify(this.root.serialize(), null, 4);
  }
  toObject() {
    return this.root.serialize();
  }
}

export default function TreeComponent() {
  const nums = _.shuffle(_.range(8));
  const tree = new Tree();
  nums.map((num) => tree.add(num));
  const objs = tree.toObject();

  return <TreeViz root={objs} />;
}
