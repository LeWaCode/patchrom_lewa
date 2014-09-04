.class public Lnet/sourceforge/jeval/Evaluator;
.super Ljava/lang/Object;
.source "Evaluator.java"


# instance fields
.field private closedParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

.field private functions:Ljava/util/Map;

.field private loadMathFunctions:Z

.field private loadMathVariables:Z

.field private loadStringFunctions:Z

.field private openParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

.field private operandStack:Ljava/util/Stack;

.field private operatorStack:Ljava/util/Stack;

.field private operators:Ljava/util/List;

.field private previousExpression:Ljava/lang/String;

.field private previousOperandStack:Ljava/util/Stack;

.field private previousOperatorStack:Ljava/util/Stack;

.field private processNestedFunctions:Z

.field private quoteCharacter:C

.field private variableResolver:Lnet/sourceforge/jeval/VariableResolver;

.field private variables:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 238
    const/16 v1, 0x27

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 239
    return-void
.end method

.method public constructor <init>(CZZZZ)V
    .locals 2
    .parameter "quoteCharacter"
    .parameter "loadMathVariables"
    .parameter "loadMathFunctions"
    .parameter "loadStringFunctions"
    .parameter "processNestedFunctions"

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    .line 193
    const/16 v0, 0x27

    iput-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    .line 196
    new-instance v0, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->openParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 199
    new-instance v0, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->closedParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 215
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    .line 221
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;

    .line 224
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 227
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    .line 230
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->variableResolver:Lnet/sourceforge/jeval/VariableResolver;

    .line 268
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->installOperators()V

    .line 271
    iput-boolean p2, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    .line 272
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->loadSystemVariables()V

    .line 275
    iput-boolean p3, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    .line 276
    iput-boolean p4, p0, Lnet/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    .line 277
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->loadSystemFunctions()V

    .line 280
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->setQuoteCharacter(C)V

    .line 283
    iput-boolean p5, p0, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    .line 284
    return-void
.end method

.method private getNextOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;
    .locals 11
    .parameter "expression"
    .parameter "start"
    .parameter "match"

    .prologue
    .line 1347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1348
    .local v3, numChars:I
    const/4 v5, 0x0

    .line 1350
    .local v5, numQuoteCharacters:I
    move v0, p2

    .local v0, charCtr:I
    :goto_0
    if-ge v0, v3, :cond_7

    .line 1352
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    iget-char v9, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v8, v9, :cond_0

    .line 1353
    add-int/lit8 v5, v5, 0x1

    .line 1357
    :cond_0
    rem-int/lit8 v8, v5, 0x2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    :cond_2
    iget-object v8, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 1363
    .local v4, numOperators:I
    const/4 v7, 0x0

    .local v7, operatorCtr:I
    :goto_1
    if-ge v7, v4, :cond_1

    .line 1364
    iget-object v8, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sourceforge/jeval/operator/Operator;

    .line 1366
    .local v6, operator:Lnet/sourceforge/jeval/operator/Operator;
    if-eqz p3, :cond_4

    .line 1369
    invoke-virtual {p3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1363
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1375
    :cond_4
    invoke-interface {v6}, Lnet/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 1376
    const/4 v1, -0x1

    .line 1377
    .local v1, endCtr:I
    add-int/lit8 v8, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_5

    .line 1378
    add-int/lit8 v1, v0, 0x2

    .line 1384
    :goto_2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Lnet/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1386
    new-instance v2, Lnet/sourceforge/jeval/NextOperator;

    invoke-direct {v2, v6, v0}, Lnet/sourceforge/jeval/NextOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;I)V

    .line 1404
    .end local v1           #endCtr:I
    .end local v4           #numOperators:I
    .end local v6           #operator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v7           #operatorCtr:I
    :goto_3
    return-object v2

    .line 1380
    .restart local v1       #endCtr:I
    .restart local v4       #numOperators:I
    .restart local v6       #operator:Lnet/sourceforge/jeval/operator/Operator;
    .restart local v7       #operatorCtr:I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    .line 1393
    .end local v1           #endCtr:I
    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-interface {v6}, Lnet/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 1395
    new-instance v2, Lnet/sourceforge/jeval/NextOperator;

    invoke-direct {v2, v6, v0}, Lnet/sourceforge/jeval/NextOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;I)V

    .line 1398
    .local v2, nextOperator:Lnet/sourceforge/jeval/NextOperator;
    goto :goto_3

    .line 1404
    .end local v2           #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    .end local v4           #numOperators:I
    .end local v6           #operator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v7           #operatorCtr:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private getResult(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;
    .locals 17
    .parameter "operatorStack"
    .parameter "operandStack"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1218
    const/4 v13, 0x0

    .line 1221
    .local v13, resultString:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Stack;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1222
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lnet/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->size()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 1229
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1232
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    .line 1235
    .local v6, finalOperand:Ljava/lang/Object;
    instance-of v14, v6, Lnet/sourceforge/jeval/ExpressionTree;

    if-eqz v14, :cond_3

    .line 1237
    check-cast v6, Lnet/sourceforge/jeval/ExpressionTree;

    .end local v6           #finalOperand:Ljava/lang/Object;
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lnet/sourceforge/jeval/ExpressionTree;->evaluate(Z)Ljava/lang/String;

    move-result-object v13

    .line 1325
    :cond_2
    :goto_1
    return-object v13

    .line 1241
    .restart local v6       #finalOperand:Ljava/lang/Object;
    :cond_3
    instance-of v14, v6, Lnet/sourceforge/jeval/ExpressionOperand;

    if-eqz v14, :cond_6

    move-object v12, v6

    .line 1242
    check-cast v12, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 1244
    .local v12, resultExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    check-cast v6, Lnet/sourceforge/jeval/ExpressionOperand;

    .end local v6           #finalOperand:Ljava/lang/Object;
    invoke-virtual {v6}, Lnet/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1245
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1249
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1250
    const/4 v10, 0x0

    .line 1252
    .local v10, resultDouble:Ljava/lang/Double;
    :try_start_0
    new-instance v10, Ljava/lang/Double;

    .end local v10           #resultDouble:Ljava/lang/Double;
    invoke-direct {v10, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    .restart local v10       #resultDouble:Ljava/lang/Double;
    invoke-virtual {v12}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 1259
    new-instance v11, Ljava/lang/Double;

    invoke-virtual {v12}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-interface/range {v14 .. v16}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .end local v10           #resultDouble:Ljava/lang/Double;
    .local v11, resultDouble:Ljava/lang/Double;
    move-object v10, v11

    .line 1265
    .end local v11           #resultDouble:Ljava/lang/Double;
    .restart local v10       #resultDouble:Ljava/lang/Double;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1266
    goto :goto_1

    .line 1253
    .end local v10           #resultDouble:Ljava/lang/Double;
    :catch_0
    move-exception v4

    .line 1254
    .local v4, e:Ljava/lang/Exception;
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15, v4}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 1267
    .end local v4           #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v12}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1268
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    const-string v15, "Invalid operand for unary operator."

    invoke-direct {v14, v15}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1272
    .end local v12           #resultExpressionOperand:Lnet/sourceforge/jeval/ExpressionOperand;
    .restart local v6       #finalOperand:Ljava/lang/Object;
    :cond_6
    instance-of v14, v6, Lnet/sourceforge/jeval/ParsedFunction;

    if-eqz v14, :cond_b

    move-object v9, v6

    .line 1273
    check-cast v9, Lnet/sourceforge/jeval/ParsedFunction;

    .line 1274
    .local v9, parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/ParsedFunction;->getFunction()Lnet/sourceforge/jeval/function/Function;

    move-result-object v7

    .line 1275
    .local v7, function:Lnet/sourceforge/jeval/function/Function;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/ParsedFunction;->getArguments()Ljava/lang/String;

    move-result-object v3

    .line 1277
    .local v3, arguments:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    if-eqz v14, :cond_7

    .line 1278
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1281
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->replaceVariables(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1285
    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v7, v0, v3}, Lnet/sourceforge/jeval/function/Function;->execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v8

    .line 1287
    .local v8, functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    invoke-virtual {v8}, Lnet/sourceforge/jeval/function/FunctionResult;->getResult()Ljava/lang/String;

    move-result-object v13

    .line 1289
    invoke-virtual {v8}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v14

    if-nez v14, :cond_9

    .line 1292
    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v13}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1295
    .restart local v10       #resultDouble:Ljava/lang/Double;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 1296
    new-instance v11, Ljava/lang/Double;

    invoke-virtual {v9}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    invoke-interface/range {v14 .. v16}, Lnet/sourceforge/jeval/operator/Operator;->evaluate(D)D

    move-result-wide v14

    invoke-direct {v11, v14, v15}, Ljava/lang/Double;-><init>(D)V

    .end local v10           #resultDouble:Ljava/lang/Double;
    .restart local v11       #resultDouble:Ljava/lang/Double;
    move-object v10, v11

    .line 1302
    .end local v11           #resultDouble:Ljava/lang/Double;
    .restart local v10       #resultDouble:Ljava/lang/Double;
    :cond_8
    invoke-virtual {v10}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1303
    goto/16 :goto_1

    .line 1304
    .end local v10           #resultDouble:Ljava/lang/Double;
    :cond_9
    invoke-virtual {v8}, Lnet/sourceforge/jeval/function/FunctionResult;->getType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 1308
    if-eqz p3, :cond_a

    .line 1309
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-char v15, v0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-char v15, v0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1313
    :cond_a
    invoke-virtual {v9}, Lnet/sourceforge/jeval/ParsedFunction;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1314
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    const-string v15, "Invalid operand for unary operator."

    invoke-direct {v14, v15}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1318
    .end local v8           #functionResult:Lnet/sourceforge/jeval/function/FunctionResult;
    :catch_1
    move-exception v5

    .line 1319
    .local v5, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    .line 1322
    .end local v3           #arguments:Ljava/lang/String;
    .end local v5           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    .end local v7           #function:Lnet/sourceforge/jeval/function/Function;
    .end local v9           #parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    :cond_b
    new-instance v14, Lnet/sourceforge/jeval/EvaluationException;

    const-string v15, "Expression is invalid."

    invoke-direct {v14, v15}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private installOperators()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->openParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->closedParenthesesOperator:Lnet/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/AdditionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/AdditionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/SubtractionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/SubtractionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/MultiplicationOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/MultiplicationOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/DivisionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/DivisionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/EqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/EqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/NotEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/NotEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/LessThanOrEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/LessThanOrEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/LessThanOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/LessThanOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/GreaterThanOrEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/GreaterThanOrEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/GreaterThanOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/GreaterThanOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanAndOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanAndOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanOrOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanOrOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanNotOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanNotOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/ModulusOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/ModulusOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method

.method private loadSystemFunctions()V
    .locals 3

    .prologue
    .line 1518
    iget-boolean v2, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    if-eqz v2, :cond_0

    .line 1519
    new-instance v0, Lnet/sourceforge/jeval/function/math/MathFunctions;

    invoke-direct {v0}, Lnet/sourceforge/jeval/function/math/MathFunctions;-><init>()V

    .line 1521
    .local v0, mathFunctions:Lnet/sourceforge/jeval/function/FunctionGroup;
    invoke-interface {v0, p0}, Lnet/sourceforge/jeval/function/FunctionGroup;->load(Lnet/sourceforge/jeval/Evaluator;)V

    .line 1525
    .end local v0           #mathFunctions:Lnet/sourceforge/jeval/function/FunctionGroup;
    :cond_0
    iget-boolean v2, p0, Lnet/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    if-eqz v2, :cond_1

    .line 1526
    new-instance v1, Lnet/sourceforge/jeval/function/string/StringFunctions;

    invoke-direct {v1}, Lnet/sourceforge/jeval/function/string/StringFunctions;-><init>()V

    .line 1528
    .local v1, stringFunctions:Lnet/sourceforge/jeval/function/FunctionGroup;
    invoke-interface {v1, p0}, Lnet/sourceforge/jeval/function/FunctionGroup;->load(Lnet/sourceforge/jeval/Evaluator;)V

    .line 1530
    .end local v1           #stringFunctions:Lnet/sourceforge/jeval/function/FunctionGroup;
    :cond_1
    return-void
.end method

.method private loadSystemVariables()V
    .locals 4

    .prologue
    .line 1537
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    if-eqz v0, :cond_0

    .line 1539
    const-string v0, "E"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x4005bf0a8b145769L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v0, "PI"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x400921fb54442d18L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_0
    return-void
.end method

.method private processFunction(Ljava/lang/String;ILjava/util/Stack;)Lnet/sourceforge/jeval/NextOperator;
    .locals 14
    .parameter "expression"
    .parameter "operatorIndex"
    .parameter "operandStack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1105
    const/4 v8, 0x1

    .line 1106
    .local v8, parenthesisCount:I
    const/4 v5, 0x0

    .line 1107
    .local v5, nextOperator:Lnet/sourceforge/jeval/NextOperator;
    move/from16 v6, p2

    .line 1110
    .local v6, nextOperatorIndex:I
    :goto_0
    if-lez v8, :cond_3

    .line 1111
    add-int/lit8 v11, v6, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, p1, v11, v12}, Lnet/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v5

    .line 1114
    if-nez v5, :cond_0

    .line 1115
    new-instance v11, Lnet/sourceforge/jeval/EvaluationException;

    const-string v12, "Function is not closed."

    invoke-direct {v11, v12}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1116
    :cond_0
    invoke-virtual {v5}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v11

    instance-of v11, v11, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v11, :cond_2

    .line 1117
    add-int/lit8 v8, v8, 0x1

    .line 1123
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lnet/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v6

    goto :goto_0

    .line 1118
    :cond_2
    invoke-virtual {v5}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v11

    instance-of v11, v11, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v11, :cond_1

    .line 1119
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1127
    :cond_3
    add-int/lit8 v11, p2, 0x1

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1131
    .local v1, arguments:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 1133
    .local v7, operand:Lnet/sourceforge/jeval/ExpressionOperand;
    invoke-virtual {v7}, Lnet/sourceforge/jeval/ExpressionOperand;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 1134
    .local v10, unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    invoke-virtual {v7}, Lnet/sourceforge/jeval/ExpressionOperand;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 1138
    .local v3, functionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lnet/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    iget-object v11, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sourceforge/jeval/function/Function;

    .line 1147
    .local v2, function:Lnet/sourceforge/jeval/function/Function;
    if-nez v2, :cond_4

    .line 1148
    new-instance v11, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "A function is not defined (index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1139
    .end local v2           #function:Lnet/sourceforge/jeval/function/Function;
    :catch_0
    move-exception v4

    .line 1140
    .local v4, iae:Ljava/lang/IllegalArgumentException;
    new-instance v11, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid function name of \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v11

    .line 1152
    .end local v4           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v2       #function:Lnet/sourceforge/jeval/function/Function;
    :cond_4
    new-instance v9, Lnet/sourceforge/jeval/ParsedFunction;

    invoke-direct {v9, v2, v1, v10}, Lnet/sourceforge/jeval/ParsedFunction;-><init>(Lnet/sourceforge/jeval/function/Function;Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1154
    .local v9, parsedFunction:Lnet/sourceforge/jeval/ParsedFunction;
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    return-object v5
.end method

.method private processOperand(Ljava/lang/String;IILjava/util/Stack;Lnet/sourceforge/jeval/operator/Operator;)I
    .locals 5
    .parameter "expression"
    .parameter "charCtr"
    .parameter "operatorIndex"
    .parameter "operandStack"
    .parameter "unaryOperator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 899
    const/4 v1, 0x0

    .line 900
    .local v1, operandString:Ljava/lang/String;
    const/4 v2, -0x1

    .line 903
    .local v2, rtnCtr:I
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 904
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 911
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 912
    new-instance v3, Lnet/sourceforge/jeval/EvaluationException;

    const-string v4, "Expression is invalid."

    invoke-direct {v3, v4}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 907
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 908
    move v2, p3

    goto :goto_0

    .line 915
    :cond_1
    new-instance v0, Lnet/sourceforge/jeval/ExpressionOperand;

    invoke-direct {v0, v1, p5}, Lnet/sourceforge/jeval/ExpressionOperand;-><init>(Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 917
    .local v0, operand:Lnet/sourceforge/jeval/ExpressionOperand;
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    return v2
.end method

.method private processOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLnet/sourceforge/jeval/operator/Operator;)I
    .locals 14
    .parameter "expression"
    .parameter "originalOperatorIndex"
    .parameter "originalOperator"
    .parameter "operatorStack"
    .parameter "operandStack"
    .parameter "haveOperand"
    .parameter "unaryOperator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 955
    move/from16 v11, p2

    .line 956
    .local v11, operatorIndex:I
    move-object/from16 v10, p3

    .line 960
    .local v10, operator:Lnet/sourceforge/jeval/operator/Operator;
    if-eqz p6, :cond_0

    instance-of v3, v10, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v3, :cond_0

    .line 961
    move-object/from16 v0, p5

    invoke-direct {p0, p1, v11, v0}, Lnet/sourceforge/jeval/Evaluator;->processFunction(Ljava/lang/String;ILjava/util/Stack;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v9

    .line 964
    .local v9, nextOperator:Lnet/sourceforge/jeval/NextOperator;
    invoke-virtual {v9}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 965
    invoke-virtual {v9}, Lnet/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v3

    invoke-interface {v10}, Lnet/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v5

    add-int v11, v3, v5

    .line 967
    const/4 v3, 0x0

    invoke-direct {p0, p1, v11, v3}, Lnet/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v9

    .line 971
    if-eqz v9, :cond_2

    .line 972
    invoke-virtual {v9}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v10

    .line 973
    invoke-virtual {v9}, Lnet/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v11

    .line 981
    .end local v9           #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    :cond_0
    instance-of v3, v10, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v3, :cond_3

    .line 982
    new-instance v8, Lnet/sourceforge/jeval/ExpressionOperator;

    move-object/from16 v0, p7

    invoke-direct {v8, v10, v0}, Lnet/sourceforge/jeval/ExpressionOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 984
    .local v8, expressionOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_1
    :goto_0
    invoke-interface {v10}, Lnet/sourceforge/jeval/operator/Operator;->getLength()I

    move-result v3

    add-int v12, v11, v3

    .line 1053
    .end local v8           #expressionOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    :goto_1
    return v12

    .restart local v9       #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    :cond_2
    move v12, v11

    .line 975
    goto :goto_1

    .line 985
    .end local v9           #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    :cond_3
    instance-of v3, v10, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v3, :cond_9

    .line 986
    const/4 v13, 0x0

    .line 988
    .local v13, stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 989
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 994
    .restart local v13       #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    :cond_4
    :goto_2
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lnet/sourceforge/jeval/ExpressionOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v3

    instance-of v3, v3, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v3, :cond_6

    .line 995
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 997
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 998
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lnet/sourceforge/jeval/ExpressionOperator;

    .restart local v13       #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    goto :goto_2

    .line 1000
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 1004
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1005
    new-instance v3, Lnet/sourceforge/jeval/EvaluationException;

    const-string v5, "Expression is invalid."

    invoke-direct {v3, v5}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1009
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 1012
    .restart local v8       #expressionOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    invoke-virtual {v8}, Lnet/sourceforge/jeval/ExpressionOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v3

    instance-of v3, v3, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v3, :cond_8

    .line 1013
    new-instance v3, Lnet/sourceforge/jeval/EvaluationException;

    const-string v5, "Expression is invalid."

    invoke-direct {v3, v5}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1017
    :cond_8
    invoke-virtual {v8}, Lnet/sourceforge/jeval/ExpressionOperator;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1018
    invoke-virtual/range {p5 .. p5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    .line 1020
    .local v4, operand:Ljava/lang/Object;
    new-instance v2, Lnet/sourceforge/jeval/ExpressionTree;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v8}, Lnet/sourceforge/jeval/ExpressionOperator;->getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lnet/sourceforge/jeval/ExpressionTree;-><init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1023
    .local v2, tree:Lnet/sourceforge/jeval/ExpressionTree;
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1027
    .end local v2           #tree:Lnet/sourceforge/jeval/ExpressionTree;
    .end local v4           #operand:Ljava/lang/Object;
    .end local v8           #expressionOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    .end local v13           #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 1028
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 1032
    .restart local v13       #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    :goto_3
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lnet/sourceforge/jeval/ExpressionOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v3

    invoke-interface {v3}, Lnet/sourceforge/jeval/operator/Operator;->getPrecedence()I

    move-result v3

    invoke-interface {v10}, Lnet/sourceforge/jeval/operator/Operator;->getPrecedence()I

    move-result v5

    if-lt v3, v5, :cond_b

    .line 1034
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->processTree(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 1036
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1037
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    check-cast v13, Lnet/sourceforge/jeval/ExpressionOperator;

    .restart local v13       #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    goto :goto_3

    .line 1040
    :cond_a
    const/4 v13, 0x0

    goto :goto_3

    .line 1045
    .end local v13           #stackOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    :cond_b
    new-instance v8, Lnet/sourceforge/jeval/ExpressionOperator;

    move-object/from16 v0, p7

    invoke-direct {v8, v10, v0}, Lnet/sourceforge/jeval/ExpressionOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1048
    .restart local v8       #expressionOperator:Lnet/sourceforge/jeval/ExpressionOperator;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private processTree(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 6
    .parameter "operandStack"
    .parameter "operatorStack"

    .prologue
    .line 1170
    const/4 v3, 0x0

    .line 1171
    .local v3, rightOperand:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1172
    .local v2, leftOperand:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1175
    .local v4, operator:Lnet/sourceforge/jeval/operator/Operator;
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1176
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 1180
    .end local v3           #rightOperand:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1181
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1185
    .end local v2           #leftOperand:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/jeval/ExpressionOperator;

    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v4

    .line 1188
    new-instance v0, Lnet/sourceforge/jeval/ExpressionTree;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/ExpressionTree;-><init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1192
    .local v0, tree:Lnet/sourceforge/jeval/ExpressionTree;
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void
.end method

.method private processUnaryOperator(ILnet/sourceforge/jeval/operator/Operator;)I
    .locals 2
    .parameter "operatorIndex"
    .parameter "operator"

    .prologue
    .line 1071
    invoke-interface {p2}, Lnet/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v0, p1, v1

    .line 1073
    .local v0, rtnCtr:I
    return v0
.end method


# virtual methods
.method public clearFunctions()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 377
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->loadSystemFunctions()V

    .line 378
    return-void
.end method

.method public clearVariables()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 490
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->loadSystemVariables()V

    .line 491
    return-void
.end method

.method public evaluate()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 576
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 578
    .local v0, expression:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 579
    :cond_0
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "No expression has been specified."

    invoke-direct {v1, v2}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    :cond_1
    invoke-virtual {p0, v0, v2, v2}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, p1, v0, v0}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .parameter "expression"
    .parameter "keepQuotes"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->parse(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    iget-object v2, p0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    invoke-direct {p0, v1, v2, p3}, Lnet/sourceforge/jeval/Evaluator;->getResult(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->isExpressionString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 620
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_0
    return-object v0
.end method

.method public evaluate(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "keepQuotes"
    .parameter "wrapStringFunctionResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 656
    .local v0, expression:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 657
    :cond_0
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "No expression has been specified."

    invoke-direct {v1, v2}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBooleanResult(Ljava/lang/String;)Z
    .locals 8
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 685
    .local v2, result:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, doubleResult:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 688
    const/4 v3, 0x1

    .line 694
    .end local v0           #doubleResult:Ljava/lang/Double;
    :cond_0
    :goto_0
    return v3

    .line 690
    :catch_0
    move-exception v1

    .line 691
    .local v1, exception:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getFunction(Ljava/lang/String;)Lnet/sourceforge/jeval/function/Function;
    .locals 1
    .parameter "functionName"

    .prologue
    .line 351
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/function/Function;

    return-object v0
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    return-object v0
.end method

.method public getLoadMathFunctions()Z
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    return v0
.end method

.method public getLoadStringFunctions()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    return v0
.end method

.method public getNumberResult(Ljava/lang/String;)D
    .locals 5
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 720
    .local v0, doubleResult:Ljava/lang/Double;
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    .end local v0           #doubleResult:Ljava/lang/Double;
    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    .restart local v0       #doubleResult:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    return-wide v3

    .line 721
    .end local v0           #doubleResult:Ljava/lang/Double;
    :catch_0
    move-exception v1

    .line 722
    .local v1, nfe:Ljava/lang/NumberFormatException;
    new-instance v3, Lnet/sourceforge/jeval/EvaluationException;

    const-string v4, "Expression does not produce a number."

    invoke-direct {v3, v4, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getProcessNestedFunctions()Z
    .locals 1

    .prologue
    .line 1722
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    return v0
.end method

.method public getQuoteCharacter()C
    .locals 1

    .prologue
    .line 292
    iget-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    return v0
.end method

.method public getVariableResolver()Lnet/sourceforge/jeval/VariableResolver;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variableResolver:Lnet/sourceforge/jeval/VariableResolver;

    return-object v0
.end method

.method public getVariableValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "variableName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 439
    .local v1, variableValue:Ljava/lang/String;
    iget-object v2, p0, Lnet/sourceforge/jeval/Evaluator;->variableResolver:Lnet/sourceforge/jeval/VariableResolver;

    if-eqz v2, :cond_0

    .line 442
    :try_start_0
    iget-object v2, p0, Lnet/sourceforge/jeval/Evaluator;->variableResolver:Lnet/sourceforge/jeval/VariableResolver;

    invoke-interface {v2, p1}, Lnet/sourceforge/jeval/VariableResolver;->resolveVariable(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 452
    :cond_0
    if-nez v1, :cond_1

    .line 454
    iget-object v2, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #variableValue:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 457
    .restart local v1       #variableValue:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 459
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not resolve variable with name equal to \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 464
    .end local v0           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    :cond_2
    return-object v1
.end method

.method public getVariables()Ljava/util/Map;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    return-object v0
.end method

.method protected isExpressionString(Ljava/lang/String;)Z
    .locals 4
    .parameter "expressionString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    if-ne v2, v3, :cond_0

    .line 1429
    :goto_0
    return v0

    .line 1425
    :cond_0
    iget-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1426
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid use of quotes."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1429
    goto :goto_0
.end method

.method public isLoadMathVariables()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    return v0
.end method

.method public isValidName(Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1453
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Variable is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1457
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1458
    .local v0, firstChar:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 1459
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not start with a number."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1464
    :cond_1
    const/16 v3, 0x27

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_2

    .line 1465
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a quote character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1467
    :cond_2
    const/16 v3, 0x22

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_3

    .line 1468
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a quote character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1473
    :cond_3
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_4

    .line 1474
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain an open brace character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1476
    :cond_4
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_5

    .line 1477
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a closed brace character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1479
    :cond_5
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v3, v4, :cond_6

    .line 1480
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a pound sign character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1485
    :cond_6
    iget-object v3, p0, Lnet/sourceforge/jeval/Evaluator;->operators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1487
    .local v2, operatorIterator:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1488
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sourceforge/jeval/operator/Operator;

    .line 1490
    .local v1, operator:Lnet/sourceforge/jeval/operator/Operator;
    invoke-interface {v1}, Lnet/sourceforge/jeval/operator/Operator;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_7

    .line 1491
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain an operator symbol."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1498
    .end local v1           #operator:Lnet/sourceforge/jeval/operator/Operator;
    :cond_8
    const-string v3, "!"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_9

    .line 1499
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1501
    :cond_9
    const-string v3, "~"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_a

    .line 1502
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1504
    :cond_a
    const-string v3, "^"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_b

    .line 1505
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1507
    :cond_b
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v4, :cond_c

    .line 1508
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A variable or function name can not contain a special character."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1511
    :cond_c
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 21
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 746
    const/16 v20, 0x1

    .line 747
    .local v20, parse:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 748
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 756
    :goto_0
    if-eqz v20, :cond_a

    .line 758
    :try_start_0
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    .line 759
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 762
    const/4 v14, 0x0

    .line 763
    .local v14, haveOperand:Z
    const/16 v17, 0x0

    .line 764
    .local v17, haveOperator:Z
    const/4 v7, 0x0

    .line 768
    .local v7, unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    .line 769
    .local v19, numChars:I
    const/4 v4, 0x0

    .line 774
    .local v4, charCtr:I
    :cond_0
    :goto_1
    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    .line 775
    const/4 v11, 0x0

    .line 776
    .local v11, operator:Lnet/sourceforge/jeval/operator/Operator;
    const/4 v5, -0x1

    .line 779
    .local v5, operatorIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnet/sourceforge/jeval/EvaluationHelper;->isSpace(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    add-int/lit8 v4, v4, 0x1

    .line 781
    goto :goto_1

    .line 750
    .end local v4           #charCtr:I
    .end local v5           #operatorIndex:I
    .end local v7           #unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v11           #operator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v19           #numChars:I
    :cond_1
    const/16 v20, 0x0

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    goto :goto_0

    .line 785
    .restart local v4       #charCtr:I
    .restart local v5       #operatorIndex:I
    .restart local v7       #unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    .restart local v11       #operator:Lnet/sourceforge/jeval/operator/Operator;
    .restart local v14       #haveOperand:Z
    .restart local v17       #haveOperator:Z
    .restart local v19       #numChars:I
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2}, Lnet/sourceforge/jeval/Evaluator;->getNextOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v18

    .line 788
    .local v18, nextOperator:Lnet/sourceforge/jeval/NextOperator;
    if-eqz v18, :cond_3

    .line 789
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v11

    .line 790
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getIndex()I

    move-result v5

    .line 794
    :cond_3
    if-gt v5, v4, :cond_4

    const/4 v2, -0x1

    if-ne v5, v2, :cond_5

    .line 795
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lnet/sourceforge/jeval/Evaluator;->processOperand(Ljava/lang/String;IILjava/util/Stack;Lnet/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 798
    const/4 v14, 0x1

    .line 799
    const/16 v17, 0x0

    .line 800
    const/4 v7, 0x0

    .line 804
    :cond_5
    if-ne v5, v4, :cond_0

    .line 805
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v2

    invoke-interface {v2}, Lnet/sourceforge/jeval/operator/Operator;->isUnary()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v17, :cond_6

    if-nez v4, :cond_8

    .line 807
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lnet/sourceforge/jeval/Evaluator;->processUnaryOperator(ILnet/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 810
    if-nez v7, :cond_7

    .line 812
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v7

    .line 827
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lnet/sourceforge/jeval/NextOperator;->getOperator()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v2

    instance-of v2, v2, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-nez v2, :cond_0

    .line 828
    const/4 v14, 0x0

    .line 829
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 814
    :cond_7
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Consecutive unary operators are not allowed (index="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 838
    .end local v4           #charCtr:I
    .end local v5           #operatorIndex:I
    .end local v7           #unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v11           #operator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v18           #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    .end local v19           #numChars:I
    :catch_0
    move-exception v16

    .line 840
    .local v16, e:Ljava/lang/Exception;
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousExpression:Ljava/lang/String;

    .line 842
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 820
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v4       #charCtr:I
    .restart local v5       #operatorIndex:I
    .restart local v7       #unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    .restart local v11       #operator:Lnet/sourceforge/jeval/operator/Operator;
    .restart local v14       #haveOperand:Z
    .restart local v17       #haveOperator:Z
    .restart local v18       #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    .restart local v19       #numChars:I
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v5

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lnet/sourceforge/jeval/Evaluator;->processOperator(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLnet/sourceforge/jeval/operator/Operator;)I

    move-result v4

    .line 824
    const/4 v7, 0x0

    goto :goto_2

    .line 835
    .end local v5           #operatorIndex:I
    .end local v11           #operator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v18           #nextOperator:Lnet/sourceforge/jeval/NextOperator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operatorStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousOperatorStack:Ljava/util/Stack;

    .line 836
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->operandStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/sourceforge/jeval/Evaluator;->previousOperandStack:Ljava/util/Stack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 844
    .end local v4           #charCtr:I
    .end local v7           #unaryOperator:Lnet/sourceforge/jeval/operator/Operator;
    .end local v14           #haveOperand:Z
    .end local v17           #haveOperator:Z
    .end local v19           #numChars:I
    :cond_a
    return-void
.end method

.method protected processNestedFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x2c

    .line 1636
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1639
    .local v11, evaluatedArguments:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1641
    new-instance v0, Lnet/sourceforge/jeval/Evaluator;

    iget-char v1, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    iget-boolean v2, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathVariables:Z

    iget-boolean v3, p0, Lnet/sourceforge/jeval/Evaluator;->loadMathFunctions:Z

    iget-boolean v4, p0, Lnet/sourceforge/jeval/Evaluator;->loadStringFunctions:Z

    iget-boolean v5, p0, Lnet/sourceforge/jeval/Evaluator;->processNestedFunctions:Z

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 1644
    .local v0, argumentsEvaluator:Lnet/sourceforge/jeval/Evaluator;
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->getFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->setFunctions(Ljava/util/Map;)V

    .line 1645
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->getVariables()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->setVariables(Ljava/util/Map;)V

    .line 1646
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->getVariableResolver()Lnet/sourceforge/jeval/VariableResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->setVariableResolver(Lnet/sourceforge/jeval/VariableResolver;)V

    .line 1648
    new-instance v12, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v12, p1, v13}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 1651
    .local v12, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v8, evalautedArgumentList:Ljava/util/List;
    :goto_0
    invoke-virtual {v12}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    invoke-virtual {v12}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1657
    .local v6, argument:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1662
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    :catch_0
    move-exception v7

    .line 1659
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1665
    .end local v6           #argument:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1668
    .local v10, evaluatedArgumentIterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1670
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1672
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1678
    .local v9, evaluatedArgument:Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1682
    .end local v0           #argumentsEvaluator:Lnet/sourceforge/jeval/Evaluator;
    .end local v8           #evalautedArgumentList:Ljava/util/List;
    .end local v9           #evaluatedArgument:Ljava/lang/String;
    .end local v10           #evaluatedArgumentIterator:Ljava/util/Iterator;
    .end local v12           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public putFunction(Lnet/sourceforge/jeval/function/Function;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 327
    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/function/Function;

    .line 333
    .local v0, existingFunction:Lnet/sourceforge/jeval/function/Function;
    if-nez v0, :cond_0

    .line 334
    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A function with the same name already exists."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "variableName"
    .parameter "variableValue"

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public removeFunction(Ljava/lang/String;)V
    .locals 2
    .parameter "functionName"

    .prologue
    .line 362
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The function does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeVaraible(Ljava/lang/String;)V
    .locals 2
    .parameter "variableName"

    .prologue
    .line 475
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The variable does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceVariables(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "expression"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 1560
    sget-object v8, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1562
    .local v3, openIndex:I
    if-gez v3, :cond_0

    .line 1620
    .end local p1
    :goto_0
    return-object p1

    .line 1566
    .restart local p1
    :cond_0
    move-object v4, p1

    .line 1568
    .local v4, replacedExpression:Ljava/lang/String;
    :goto_1
    if-ltz v3, :cond_2

    .line 1570
    const/4 v0, -0x1

    .line 1571
    .local v0, closedIndex:I
    if-ltz v3, :cond_1

    .line 1573
    sget-object v8, Lnet/sourceforge/jeval/EvaluationConstants;->CLOSED_VARIABLE:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1575
    if-le v0, v3, :cond_2

    .line 1577
    sget-object v8, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1584
    .local v5, variableName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v5}, Lnet/sourceforge/jeval/Evaluator;->isValidName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    invoke-virtual {p0, v5}, Lnet/sourceforge/jeval/Evaluator;->getVariableValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1592
    .local v7, variableValue:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lnet/sourceforge/jeval/EvaluationConstants;->CLOSED_VARIABLE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1596
    .local v6, variableString:Ljava/lang/String;
    invoke-static {v4, v6, v7}, Lnet/sourceforge/jeval/EvaluationHelper;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    .end local v5           #variableName:Ljava/lang/String;
    .end local v6           #variableString:Ljava/lang/String;
    .end local v7           #variableValue:Ljava/lang/String;
    :cond_1
    sget-object v8, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1609
    goto :goto_1

    .line 1585
    .restart local v5       #variableName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1586
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    new-instance v8, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid variable name of \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 1612
    .end local v0           #closedIndex:I
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    .end local v5           #variableName:Ljava/lang/String;
    :cond_2
    sget-object v8, Lnet/sourceforge/jeval/EvaluationConstants;->OPEN_VARIABLE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1614
    .local v2, openBraceIndex:I
    const/4 v8, -0x1

    if-le v2, v8, :cond_3

    .line 1615
    new-instance v8, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "A variable has not been closed (index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    move-object p1, v4

    .line 1620
    goto/16 :goto_0
.end method

.method public setFunctions(Ljava/util/Map;)V
    .locals 0
    .parameter "functions"

    .prologue
    .line 395
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->functions:Ljava/util/Map;

    .line 396
    return-void
.end method

.method public setQuoteCharacter(C)V
    .locals 2
    .parameter "quoteCharacter"

    .prologue
    .line 306
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 308
    :cond_0
    iput-char p1, p0, Lnet/sourceforge/jeval/Evaluator;->quoteCharacter:C

    .line 312
    return-void

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lnet/sourceforge/jeval/VariableResolver;)V
    .locals 0
    .parameter "variableResolver"

    .prologue
    .line 531
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->variableResolver:Lnet/sourceforge/jeval/VariableResolver;

    .line 532
    return-void
.end method

.method public setVariables(Ljava/util/Map;)V
    .locals 0
    .parameter "variables"

    .prologue
    .line 508
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->variables:Ljava/util/Map;

    .line 509
    return-void
.end method
