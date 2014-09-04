.class public Llewa/widget/dicon/IfelseFunction;
.super Ljava/lang/Object;
.source "IfelseFunction.java"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 13
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v7, 0x0

    .line 48
    .local v7, result:Ljava/lang/String;
    const-string v4, "Three string arguments are required."

    .line 51
    .local v4, exceptionMessage:Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-static {p2, v10}, Lnet/sourceforge/jeval/function/FunctionHelper;->getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v9

    .line 54
    .local v9, strings:Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 55
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " size:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 60
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, argumentTwo:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, argumentThree:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lnet/sourceforge/jeval/Evaluator;->getBooleanResult(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 65
    invoke-static {v2}, Llewa/widget/dicon/ValExp;->isString(Ljava/lang/String;)Z

    move-result v6

    .line 66
    .local v6, isStringResult:Z
    if-eqz v6, :cond_1

    .line 67
    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v10

    invoke-static {v2, v10}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 69
    const/4 v8, 0x1

    .line 92
    .local v8, resultType:I
    :goto_0
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v10, v7, v8}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v10

    .line 71
    .end local v8           #resultType:I
    :cond_1
    :try_start_1
    invoke-virtual {p1, v2}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 72
    const/4 v8, 0x0

    .restart local v8       #resultType:I
    goto :goto_0

    .line 76
    .end local v6           #isStringResult:Z
    .end local v8           #resultType:I
    :cond_2
    invoke-static {v1}, Llewa/widget/dicon/ValExp;->isString(Ljava/lang/String;)Z

    move-result v6

    .line 77
    .restart local v6       #isStringResult:Z
    if-eqz v6, :cond_3

    .line 78
    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v10

    invoke-static {v1, v10}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    .line 80
    const/4 v8, 0x1

    .restart local v8       #resultType:I
    goto :goto_0

    .line 82
    .end local v8           #resultType:I
    :cond_3
    const/4 v8, 0x0

    .line 83
    .restart local v8       #resultType:I
    invoke-virtual {p1, v1}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_0

    .line 86
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentThree:Ljava/lang/String;
    .end local v2           #argumentTwo:Ljava/lang/String;
    .end local v6           #isStringResult:Z
    .end local v8           #resultType:I
    :catch_0
    move-exception v5

    .line 87
    .local v5, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 88
    .end local v5           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v3

    .line 89
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v10, v4, v3}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "ifelse"

    return-object v0
.end method
