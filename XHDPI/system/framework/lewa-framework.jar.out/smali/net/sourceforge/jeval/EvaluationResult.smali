.class public Lnet/sourceforge/jeval/EvaluationResult;
.super Ljava/lang/Object;
.source "EvaluationResult.java"


# instance fields
.field private quoteCharacter:C

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .parameter "result"
    .parameter "quoteCharacter"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    .line 43
    iput-char p2, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    .line 44
    return-void
.end method


# virtual methods
.method public getDouble()Ljava/lang/Double;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getQuoteCharacter()C
    .locals 1

    .prologue
    .line 52
    iget-char v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getUnwrappedString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBooleanFalse()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "0.0"

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBooleanTrue()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "1.0"

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 131
    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    iget-object v2, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    if-ne v1, v2, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0
.end method

.method public setQuoteCharacter(C)V
    .locals 0
    .parameter "quoteCharacter"

    .prologue
    .line 62
    iput-char p1, p0, Lnet/sourceforge/jeval/EvaluationResult;->quoteCharacter:C

    .line 63
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 81
    iput-object p1, p0, Lnet/sourceforge/jeval/EvaluationResult;->result:Ljava/lang/String;

    .line 82
    return-void
.end method
