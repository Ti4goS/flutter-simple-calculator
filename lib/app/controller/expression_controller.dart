import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/app/model/binary_tree.dart';


class ExpressionController extends ChangeNotifier {

  static Tree tree = Tree(node:"Start");
  static String expression = "";
  static String firstNumber = "";
  static String operator = "";
  static String secondNumber = "";
  static const List<int> hashList = [
    304995072,370600937,178656563,387608104,300000183,455751235
  ];

  void addString(String typed){
    int hash = typed.hashCode;
    if(!hashList.contains(hash)){
      if(operator==""){
        firstNumber+=typed;
      }else{
        secondNumber+=typed;
      }

    }else{
      if(hash==455751235){
        return;

      }else if(secondNumber=="") {
        operator = typed;

      }else if(hash==304995072){
        tree = Tree(node:"Start");
        expression="";
        firstNumber="";
        operator="";
        secondNumber="";
        notifyListeners();
        return;
      }else{


        if(firstNumber!="done"){
          changeTreeRoot(firstNumber);
          firstNumber="done";
        }

        addToTree(operator,secondNumber);
        operator = typed;
        secondNumber = "";

        printTree(tree,"root");
      }
    }

    buildExpression(typed);
  }

  void changeTreeRoot(String first){
    if (tree.node == "Start") tree = Tree(node: first);
  }

  void addToTree(String operator, String number) {
    String insert = "";

    switch (operator) {
      case"÷":
        insert = "left";
        break;
      case"X":
        insert = "left";
        break;
      case"+":
        insert = "right";
        break;
      case"-":
        insert = "right";
        break;
    }

    if(insert=="left"){
      Tree node = tree.addLeft(tree, operator);
      debugPrint(node.node.toString());
      tree.addLeft(node, number);

    } else{
      Tree node = tree.addRight(tree, operator);
      tree.addRight(node, number);
    }
  }


  static void printTree(Tree? root,String side){
    if(root!=null){
      debugPrint(root.node + side);
      if(root.left!=null){
        printTree(root.left!,"left");
      }
      if(root.right!=null) {
        printTree(root.right!,"right");
      }
    }
  }

  void buildExpression(String typed){
    expression+=typed;
    notifyListeners();
  }

  String get getExpression => expression;
}
