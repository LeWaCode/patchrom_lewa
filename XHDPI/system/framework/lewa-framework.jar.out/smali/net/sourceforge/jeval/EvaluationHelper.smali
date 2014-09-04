.class public Lnet/sourceforge/jeval/EvaluationHelper;
.super Ljava/lang/Object;
.source "EvaluationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSpace(C)Z
    .locals 1
    .parameter "character"

    .prologue
    .line 80
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "expression"
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 37
    move-object v3, p0

    .line 39
    .local v3, replacedExpression:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, charCtr:I
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, oldStringIndex:I
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v2, v4

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 59
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 62
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 67
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #charCtr:I
    .end local v2           #oldStringIndex:I
    :cond_1
    return-object v3
.end method
