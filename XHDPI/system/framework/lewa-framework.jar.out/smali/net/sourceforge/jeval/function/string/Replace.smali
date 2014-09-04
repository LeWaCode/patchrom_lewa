.class public Lnet/sourceforge/jeval/function/string/Replace;
.super Ljava/lang/Object;
.source "Replace.java"

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
    .locals 13
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 74
    const/4 v8, 0x0

    .line 75
    .local v8, result:Ljava/lang/String;
    const-string v4, "One string argument and two character arguments are required."

    .line 78
    .local v4, exceptionMessage:Ljava/lang/String;
    const/16 v10, 0x2c

    invoke-static {p2, v10}, Lnet/sourceforge/jeval/function/FunctionHelper;->getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v9

    .line 81
    .local v9, values:Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    .line 82
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v10, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 86
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v11

    invoke-static {v10, v11}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, argumentOne:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v11

    invoke-static {v10, v11}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, argumentTwo:Ljava/lang/String;
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->getQuoteCharacter()C

    move-result v11

    invoke-static {v10, v11}, Lnet/sourceforge/jeval/function/FunctionHelper;->trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, argumentThree:Ljava/lang/String;
    const/16 v7, 0x20

    .line 96
    .local v7, oldCharacter:C
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_1

    .line 97
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 102
    const/16 v6, 0x20

    .line 103
    .local v6, newCharacter:C
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 104
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 109
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 116
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v10, v8, v12}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v10

    .line 99
    .end local v6           #newCharacter:C
    :cond_1
    :try_start_1
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v10, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentThree:Ljava/lang/String;
    .end local v2           #argumentTwo:Ljava/lang/String;
    .end local v7           #oldCharacter:C
    :catch_0
    move-exception v5

    .line 111
    .local v5, fe:Lnet/sourceforge/jeval/function/FunctionException;
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 106
    .end local v5           #fe:Lnet/sourceforge/jeval/function/FunctionException;
    .restart local v0       #argumentOne:Ljava/lang/String;
    .restart local v1       #argumentThree:Ljava/lang/String;
    .restart local v2       #argumentTwo:Ljava/lang/String;
    .restart local v6       #newCharacter:C
    .restart local v7       #oldCharacter:C
    :cond_2
    :try_start_2
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v10, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    .end local v0           #argumentOne:Ljava/lang/String;
    .end local v1           #argumentThree:Ljava/lang/String;
    .end local v2           #argumentTwo:Ljava/lang/String;
    .end local v6           #newCharacter:C
    .end local v7           #oldCharacter:C
    :catch_1
    move-exception v3

    .line 113
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v10, v4, v3}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "replace"

    return-object v0
.end method
