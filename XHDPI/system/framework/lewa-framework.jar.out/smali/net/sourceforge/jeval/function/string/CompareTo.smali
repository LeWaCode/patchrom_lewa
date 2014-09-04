.class public Lnet/sourceforge/jeval/function/string/CompareTo;
.super Ljava/lang/Object;
.source "CompareTo.java"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 10
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    .local v5, result:Ljava/lang/Integer;
    const-string v3, "Two string arguments are required."

    .line 75
    .local v3, exceptionMessage:Ljava/lang/String;
    const/16 v7, 0x2c

    invoke-static {p2, v7}, Lnet/sourceforge/jeval/function/FunctionHelper;->getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v6

    .line 78
    .local v6, strings:Ljava/util/ArrayList;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 79
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v7, v3}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v8

    invoke-static {v7, v8}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v8

    invoke-static {v7, v8}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, argumentTwo:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    .end local v5           #result:Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    .restart local v5       #result:Ljava/lang/Integer;
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v7

    .line 88
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentTwo:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 89
    .local v4, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v4}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 90
    .end local v4           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    :catch_1
    move-exception v2

    .line 91
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v7, v3, v2}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "compareTo"

    return-object v0
.end method
