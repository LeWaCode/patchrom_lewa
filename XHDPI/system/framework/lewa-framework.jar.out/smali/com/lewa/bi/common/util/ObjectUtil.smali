.class public Lcom/lewa/bi/common/util/ObjectUtil;
.super Ljava/lang/Object;
.source "ObjectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 11
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    .line 13
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    .line 14
    const/4 v0, -0x1

    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, a:Ljava/lang/Comparable;,"TT;"
    .local p1, b:Ljava/lang/Comparable;,"TT;"
    if-nez p0, :cond_1

    .line 22
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    .line 22
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 24
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs isAllNotNull([Ljava/lang/Object;)Z
    .locals 5
    .parameter "objects"

    .prologue
    const/4 v4, 0x0

    .line 36
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v4

    .line 39
    :cond_1
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 40
    .local v3, object:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v3           #object:Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static varargs isAnyNotNull([Ljava/lang/Object;)Z
    .locals 5
    .parameter "objects"

    .prologue
    const/4 v4, 0x0

    .line 51
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v4

    .line 54
    :cond_1
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 55
    .local v3, object:Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs max(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;[TT;)TT;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, startValue:Ljava/lang/Comparable;,"TT;"
    .local p1, values:[Ljava/lang/Comparable;,"[TT;"
    move-object v4, p0

    .line 64
    .local v4, value:Ljava/lang/Comparable;,"TT;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Comparable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 65
    .local v3, t:Ljava/lang/Comparable;,"TT;"
    invoke-static {v4, v3}, Lcom/lewa/bi/common/util/ObjectUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v5

    if-gez v5, :cond_0

    .line 66
    move-object v4, v3

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3           #t:Ljava/lang/Comparable;,"TT;"
    :cond_1
    return-object v4
.end method

.method public static varargs min(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;[TT;)TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, startValue:Ljava/lang/Comparable;,"TT;"
    .local p1, values:[Ljava/lang/Comparable;,"[TT;"
    move-object v4, p0

    .line 74
    .local v4, value:Ljava/lang/Comparable;,"TT;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Comparable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 75
    .local v3, t:Ljava/lang/Comparable;,"TT;"
    invoke-static {v4, v3}, Lcom/lewa/bi/common/util/ObjectUtil;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v5

    if-lez v5, :cond_0

    .line 76
    move-object v4, v3

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v3           #t:Ljava/lang/Comparable;,"TT;"
    :cond_1
    return-object v4
.end method
