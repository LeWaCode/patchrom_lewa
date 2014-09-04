.class public Lcom/lewa/bi/common/data/Asserts;
.super Ljava/lang/Object;
.source "Asserts.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "reason"
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    .line 18
    invoke-static {p1, p2}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Expected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public static assertFalse(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;Z)V
    .locals 1
    .parameter "reason"
    .parameter "description"
    .parameter "value"

    .prologue
    .line 29
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/lewa/bi/common/data/Asserts;->assertTrue(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;Z)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertFalse(Lcom/lewa/bi/common/api/ReasonCode;Z)V
    .locals 1
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 25
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/lewa/bi/common/data/Asserts;->assertTrue(Lcom/lewa/bi/common/api/ReasonCode;Z)V

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .locals 1
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 33
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lcom/lewa/bi/common/data/Asserts;->assertTrue(Ljava/lang/String;Z)V

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs assertNotAllNull(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "reason"
    .parameter "values"

    .prologue
    .line 37
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 38
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3           #value:Ljava/lang/Object;
    :cond_1
    new-instance v4, Lcom/lewa/bi/common/api/ApiException;

    sget-object v5, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    invoke-direct {v4, v5, p0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v4
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 46
    invoke-static {p1}, Lcom/lewa/bi/common/util/ObjectUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method public static assertNotNull(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/Object;)V
    .locals 1
    .parameter "reasonCode"
    .parameter "value"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v0, p0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method public static assertSize(Ljava/lang/String;II)V
    .locals 4
    .parameter "field"
    .parameter "realSize"
    .parameter "maxSize"

    .prologue
    .line 64
    if-le p1, p2, :cond_0

    .line 65
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public static assertTrue(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;Z)V
    .locals 1
    .parameter "reason"
    .parameter "description"
    .parameter "value"

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v0, p0, p1}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public static assertTrue(Lcom/lewa/bi/common/api/ReasonCode;Z)V
    .locals 1
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    invoke-direct {v0, p0}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .locals 4
    .parameter "reason"
    .parameter "value"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Lcom/lewa/bi/common/api/ApiException;

    sget-object v1, Lcom/lewa/bi/common/api/ReasonCode;->INVALID_PARAMETER:Lcom/lewa/bi/common/api/ReasonCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lewa/bi/common/api/ApiException;-><init>(Lcom/lewa/bi/common/api/ReasonCode;Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method
