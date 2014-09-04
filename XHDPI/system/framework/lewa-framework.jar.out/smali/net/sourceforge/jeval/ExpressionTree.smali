.class public Lnet/sourceforge/jeval/ExpressionTree;
.super Ljava/lang/Object;
.source "ExpressionTree.java"


# instance fields
.field private evaluator:Lnet/sourceforge/jeval/Evaluator;

.field private leftOperand:Ljava/lang/Object;

.field private operator:Lnet/sourceforge/jeval/operator/Operator;

.field private rightOperand:Ljava/lang/Object;

.field private unaryOperator:Lnet/sourceforge/jeval/operator/Operator;


# direct methods
.method public constructor <init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V
    .locals 1
    .parameter "evaluator"
    .parameter "leftOperand"
    .parameter "rightOperand"
    .parameter "operator"
    .parameter "unaryOperator"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->operator:Lnet/sourceforge/jeval/operator/Operator;

    .line 41
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 44
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    .line 64
    iput-object p1, p0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    .line 65
    iput-object p2, p0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lnet/sourceforge/jeval/ExpressionTree;->operator:Lnet/sourceforge/jeval/operator/Operator;

    .line 68
    iput-object p5, p0, Lnet/sourceforge/jeval/ExpressionTree;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 69
    return-void
.end method


# virtual methods
.method public evaluate(Z)Ljava/lang/String;
    .locals 28
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 123
    const/16 v22, 0x0

    .line 126
    .local v22, rtnResult:Ljava/lang/String;
    const/4 v13, 0x0

    .line 127
    .local v13, leftResultString:Ljava/lang/String;
    const/4 v11, 0x0

    .line 129
    .local v11, leftResultDouble:Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionTree;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lnet/sourceforge/jeval/ExpressionTree;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/ExpressionTree;->evaluate(Z)Ljava/lang/String;

    move-result-object v13

    .line 134
    :try_start_0
    new-instance v11, Ljava/lang/Double;

    .end local v11           #leftResultDouble:Ljava/lang/Double;
    invoke-direct {v11, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    const/4 v13, 0x0

    .line 232
    :cond_0
    :goto_0
    const/16 v21, 0x0

    .line 233
    .local v21, rightResultString:Ljava/lang/String;
    const/16 v19, 0x0

    .line 235
    .local v19, rightResultDouble:Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionTree;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lnet/sourceforge/jeval/ExpressionTree;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/ExpressionTree;->evaluate(Z)Ljava/lang/String;

    move-result-object v21

    .line 240
    :try_start_1
    new-instance v19, Ljava/lang/Double;

    .end local v19           #rightResultDouble:Ljava/lang/Double;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 241
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    const/16 v21, 0x0

    .line 338
    :cond_1
    :goto_1
    if-eqz v11, :cond_15

    if-eqz v19, :cond_15

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->operator:Lnet/sourceforge/jeval/operator/Operator;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    invoke-interface/range {v23 .. v27}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(DD)D

    move-result-wide v4

    .line 342
    .local v4, doubleResult:D
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/jeval/ExpressionTree;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 343
    invoke-virtual/range {p0 .. p0}, Lnet/sourceforge/jeval/ExpressionTree;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v4, v5}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v4

    .line 346
    :cond_2
    new-instance v23, Ljava/lang/Double;

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v22

    .line 366
    .end local v4           #doubleResult:D
    :goto_2
    return-object v22

    .line 136
    .end local v11           #leftResultDouble:Ljava/lang/Double;
    .end local v19           #rightResultDouble:Ljava/lang/Double;
    .end local v21           #rightResultString:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 137
    .local v6, exception:Ljava/lang/NumberFormatException;
    const/4 v11, 0x0

    .line 138
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    goto :goto_0

    .line 139
    .end local v6           #exception:Ljava/lang/NumberFormatException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionOperand;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 141
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    check-cast v10, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 143
    .local v10, leftExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    invoke-virtual {v10}, Lnet/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 150
    :try_start_2
    new-instance v11, Ljava/lang/Double;

    .end local v11           #leftResultDouble:Ljava/lang/Double;
    invoke-direct {v11, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    const/4 v13, 0x0

    .line 156
    invoke-virtual {v10}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 157
    new-instance v12, Ljava/lang/Double;

    invoke-virtual {v10}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-interface/range {v23 .. v25}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    invoke-direct {v12, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .end local v11           #leftResultDouble:Ljava/lang/Double;
    .local v12, leftResultDouble:Ljava/lang/Double;
    move-object v11, v12

    .end local v12           #leftResultDouble:Ljava/lang/Double;
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    goto/16 :goto_0

    .line 152
    .end local v11           #leftResultDouble:Ljava/lang/Double;
    :catch_1
    move-exception v14

    .line 153
    .local v14, nfe:Ljava/lang/NumberFormatException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 162
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    :cond_4
    invoke-virtual {v10}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 163
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Invalid operand for unary operator."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 167
    .end local v10           #leftExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ParsedFunction;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    check-cast v15, Lnet/sourceforge/jeval/ParsedFunction;

    .line 170
    .local v15, parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getFunction()Lnet/sourceforge/jeval/function/Function;

    move-result-object v8

    .line 171
    .local v8, function:Lnet/sourceforge/jeval/function/Function;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getArguments()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, arguments:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnet/sourceforge/jeval/Evaluator;->getProcessNestedFunctions()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v8, v0, v3}, Lnet/sourceforge/jeval/function/Function;->execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v9

    .line 181
    .local v9, functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getResult()Ljava/lang/String;

    move-result-object v13

    .line 183
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v23

    if-nez v23, :cond_9

    .line 186
    new-instance v16, Ljava/lang/Double;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 189
    .local v16, resultDouble:Ljava/lang/Double;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_7

    .line 190
    new-instance v17, Ljava/lang/Double;

    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-interface/range {v23 .. v25}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v23

    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .end local v16           #resultDouble:Ljava/lang/Double;
    .local v17, resultDouble:Ljava/lang/Double;
    move-object/from16 v16, v17

    .line 196
    .end local v17           #resultDouble:Ljava/lang/Double;
    .restart local v16       #resultDouble:Ljava/lang/Double;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v13

    .line 217
    .end local v16           #resultDouble:Ljava/lang/Double;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 219
    :try_start_4
    new-instance v11, Ljava/lang/Double;

    .end local v11           #leftResultDouble:Ljava/lang/Double;
    invoke-direct {v11, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 198
    :cond_9
    :try_start_5
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 202
    if-eqz p1, :cond_a

    .line 203
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 208
    :cond_a
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 209
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Invalid operand for unary operator."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_5
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_5 .. :try_end_5} :catch_2

    .line 213
    .end local v9           #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    :catch_2
    move-exception v7

    .line 214
    .local v7, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v7}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 221
    .end local v7           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    .end local v11           #leftResultDouble:Ljava/lang/Double;
    .restart local v9       #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    :catch_3
    move-exception v14

    .line 222
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 226
    .end local v3           #arguments:Ljava/lang/String;
    .end local v8           #function:Lnet/sourceforge/jeval/function/Function;
    .end local v9           #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .end local v15           #parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    .restart local v11       #leftResultDouble:Ljava/lang/Double;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 227
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 242
    .restart local v21       #rightResultString:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 243
    .restart local v6       #exception:Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    .line 244
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    goto/16 :goto_1

    .line 246
    .end local v6           #exception:Ljava/lang/NumberFormatException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionOperand;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 249
    .local v18, rightExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lnet/sourceforge/jeval/ExpressionOperand;

    invoke-virtual/range {v23 .. v23}, Lnet/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v21

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 256
    :try_start_6
    new-instance v19, Ljava/lang/Double;

    .end local v19           #rightResultDouble:Ljava/lang/Double;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 257
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    const/16 v21, 0x0

    .line 262
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 263
    new-instance v20, Ljava/lang/Double;

    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-interface/range {v23 .. v25}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v23

    move-object/from16 v0, v20

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .end local v19           #rightResultDouble:Ljava/lang/Double;
    .local v20, rightResultDouble:Ljava/lang/Double;
    move-object/from16 v19, v20

    .end local v20           #rightResultDouble:Ljava/lang/Double;
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    goto/16 :goto_1

    .line 258
    .end local v19           #rightResultDouble:Ljava/lang/Double;
    :catch_5
    move-exception v14

    .line 259
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 268
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_1

    .line 269
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Invalid operand for unary operator."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 273
    .end local v18           #rightExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lnet/sourceforge/jeval/ParsedFunction;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    check-cast v15, Lnet/sourceforge/jeval/ParsedFunction;

    .line 276
    .restart local v15       #parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getFunction()Lnet/sourceforge/jeval/function/Function;

    move-result-object v8

    .line 277
    .restart local v8       #function:Lnet/sourceforge/jeval/function/Function;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getArguments()Ljava/lang/String;

    move-result-object v3

    .line 278
    .restart local v3       #arguments:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lnet/sourceforge/jeval/Evaluator;->getProcessNestedFunctions()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v8, v0, v3}, Lnet/sourceforge/jeval/function/Function;->execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v9

    .line 287
    .restart local v9       #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getResult()Ljava/lang/String;

    move-result-object v21

    .line 289
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v23

    if-nez v23, :cond_12

    .line 292
    new-instance v16, Ljava/lang/Double;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v16       #resultDouble:Ljava/lang/Double;
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_10

    .line 296
    new-instance v17, Ljava/lang/Double;

    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-interface/range {v23 .. v25}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v23

    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .end local v16           #resultDouble:Ljava/lang/Double;
    .restart local v17       #resultDouble:Ljava/lang/Double;
    move-object/from16 v16, v17

    .line 302
    .end local v17           #resultDouble:Ljava/lang/Double;
    .restart local v16       #resultDouble:Ljava/lang/Double;
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v21

    .line 323
    .end local v16           #resultDouble:Ljava/lang/Double;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 325
    :try_start_8
    new-instance v19, Ljava/lang/Double;

    .end local v19           #rightResultDouble:Ljava/lang/Double;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    .line 326
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 304
    :cond_12
    :try_start_9
    invoke-virtual {v9}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 308
    if-eqz p1, :cond_13

    .line 309
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->evaluator:Lnet/sourceforge/jeval/Evaluator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 314
    :cond_13
    invoke-virtual {v15}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v23

    if-eqz v23, :cond_11

    .line 315
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Invalid operand for unary operator."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_9
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_9 .. :try_end_9} :catch_6

    .line 319
    .end local v9           #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    :catch_6
    move-exception v7

    .line 320
    .restart local v7       #fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v7}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v7}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 327
    .end local v7           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    .end local v19           #rightResultDouble:Ljava/lang/Double;
    .restart local v9       #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    :catch_7
    move-exception v14

    .line 328
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v23

    .line 331
    .end local v3           #arguments:Ljava/lang/String;
    .end local v8           #function:Lnet/sourceforge/jeval/function/Function;
    .end local v9           #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .end local v15           #parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    .restart local v19       #rightResultDouble:Ljava/lang/Double;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 334
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 347
    :cond_15
    if-eqz v13, :cond_16

    if-eqz v21, :cond_16

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->operator:Lnet/sourceforge/jeval/operator/Operator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v13, v1}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 349
    :cond_16
    if-eqz v11, :cond_18

    if-nez v19, :cond_18

    .line 350
    const-wide/high16 v4, -0x4010

    .line 352
    .restart local v4       #doubleResult:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/sourceforge/jeval/ExpressionTree;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    invoke-interface/range {v23 .. v25}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v4

    .line 361
    new-instance v23, Ljava/lang/Double;

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v22

    .line 362
    goto/16 :goto_2

    .line 358
    :cond_17
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 363
    .end local v4           #doubleResult:D
    :cond_18
    new-instance v23, Lnet/sourceforge/jeval/EvaluationException;

    const-string v24, "Expression is invalid."

    invoke-direct/range {v23 .. v24}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v23
.end method

.method public getLeftOperand()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->leftOperand:Ljava/lang/Object;

    return-object v0
.end method

.method public getOperator()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->operator:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method

.method public getRightOperand()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->rightOperand:Ljava/lang/Object;

    return-object v0
.end method

.method public getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method
