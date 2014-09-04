.class public Lnet/sourceforge/jeval/function/FunctionHelper;
.super Ljava/lang/Object;
.source "FunctionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDoubles(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 6
    .parameter "arguments"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, returnValues:Ljava/util/ArrayList;
    :try_start_0
    new-instance v3, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v3, p0, p1}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 100
    .local v3, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :goto_0
    invoke-virtual {v3}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v3}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, token:Ljava/lang/String;
    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v5, "Invalid values in string."

    invoke-direct {v4, v5, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_0
    return-object v1
.end method

.method public static getOneStringAndOneInteger(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 7
    .parameter "arguments"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, returnValues:Ljava/util/ArrayList;
    :try_start_0
    new-instance v4, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v4, p0, p1}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 172
    .local v4, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    const/4 v3, 0x0

    .line 173
    .local v3, tokenCtr:I
    :goto_0
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    if-nez v3, :cond_0

    .line 175
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 178
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2       #token:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenCtr:I
    .end local v4           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #tokenCtr:I
    .restart local v4       #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_1
    :try_start_1
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :cond_2
    return-object v1
.end method

.method public static getOneStringAndTwoIntegers(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 7
    .parameter "arguments"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, returnValues:Ljava/util/ArrayList;
    :try_start_0
    new-instance v4, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v4, p0, p1}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 264
    .local v4, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    const/4 v3, 0x0

    .line 265
    .local v3, tokenCtr:I
    :goto_0
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    if-nez v3, :cond_0

    .line 267
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 270
    :cond_1
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 271
    .restart local v2       #token:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 278
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenCtr:I
    .end local v4           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 273
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #tokenCtr:I
    .restart local v4       #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_2
    :try_start_1
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :cond_3
    return-object v1
.end method

.method public static getStrings(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 6
    .parameter "arguments"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, returnValues:Ljava/util/ArrayList;
    :try_start_0
    new-instance v3, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v3, p0, p1}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 136
    .local v3, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :goto_0
    invoke-virtual {v3}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v3}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v5, "Invalid values in string."

    invoke-direct {v4, v5, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_0
    return-object v1
.end method

.method public static getTwoStringsAndOneInteger(Ljava/lang/String;C)Ljava/util/ArrayList;
    .locals 7
    .parameter "arguments"
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, returnValues:Ljava/util/ArrayList;
    :try_start_0
    new-instance v4, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v4, p0, p1}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 218
    .local v4, tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    const/4 v3, 0x0

    .line 219
    .local v3, tokenCtr:I
    :goto_0
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 221
    :cond_0
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, token:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .end local v2           #token:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 224
    invoke-virtual {v4}, Lnet/sourceforge/jeval/ArgumentTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2       #token:Ljava/lang/String;
    new-instance v5, Ljava/lang/Integer;

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Double;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #tokenCtr:I
    .end local v4           #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #tokenCtr:I
    .restart local v4       #tokenizer:Lnet/sourceforge/jeval/ArgumentTokenizer;
    :cond_2
    :try_start_1
    new-instance v5, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v6, "Invalid values in string."

    invoke-direct {v5, v6}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :cond_3
    return-object v1
.end method

.method public static trimAndRemoveQuoteChars(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter "arguments"
    .parameter "quoteCharacter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 53
    move-object v0, p0

    .line 55
    .local v0, trimmedArgument:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    return-object v0

    .line 61
    :cond_0
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v2, "Value does not start with a quote."

    invoke-direct {v1, v2}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v2, "Value does not end with a quote."

    invoke-direct {v1, v2}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
