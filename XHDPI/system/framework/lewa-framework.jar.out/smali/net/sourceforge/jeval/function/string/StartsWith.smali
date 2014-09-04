.class public Lnet/sourceforge/jeval/function/string/StartsWith;
.super Ljava/lang/Object;
.source "StartsWith.java"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 11
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    .local v6, result:Ljava/lang/String;
    const-string v3, "Two string arguments and one integer argument are required."

    .line 78
    .local v3, exceptionMessage:Ljava/lang/String;
    const/16 v8, 0x2c

    invoke-static {p2, v8}, Lnet/sourceforge/jeval/function/FunctionHelper;->getTwoStringsAndOneInteger(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v7

    .line 81
    .local v7, values:Ljava/util/ArrayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    .line 82
    new-instance v8, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v8, v3}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 86
    :cond_0
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v9

    invoke-static {v8, v9}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v9

    invoke-static {v8, v9}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, argumentTwo:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 92
    .local v5, index:I
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 93
    const-string v6, "1.0"
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    new-instance v8, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v8, v6, v10}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v8

    .line 95
    :cond_1
    :try_start_1
    const-string v6, "0.0"
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentTwo:Ljava/lang/String;
    .end local v5           #index:I
    :catch_0
    move-exception v4

    .line 98
    .local v4, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v8, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v4}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 99
    .end local v4           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v2

    .line 100
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v8, v3, v2}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "startsWith"

    return-object v0
.end method
