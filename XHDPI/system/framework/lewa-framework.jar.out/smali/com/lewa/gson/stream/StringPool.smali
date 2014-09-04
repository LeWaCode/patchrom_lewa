.class final Lcom/lewa/gson/stream/StringPool;
.super Ljava/lang/Object;
.source "StringPool.java"


# instance fields
.field private final pool:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/lewa/gson/stream/StringPool;->pool:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get([CII)Ljava/lang/String;
    .locals 7
    .parameter "array"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, hashCode:I
    move v1, p2

    .local v1, i:I
    :goto_0
    add-int v5, p2, p3

    if-ge v1, v5, :cond_0

    .line 35
    mul-int/lit8 v5, v0, 0x1f

    aget-char v6, p1, v1

    add-int v0, v5, v6

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    ushr-int/lit8 v5, v0, 0x14

    ushr-int/lit8 v6, v0, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    .line 40
    ushr-int/lit8 v5, v0, 0x7

    ushr-int/lit8 v6, v0, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    .line 41
    iget-object v5, p0, Lcom/lewa/gson/stream/StringPool;->pool:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    and-int v2, v0, v5

    .line 43
    .local v2, index:I
    iget-object v5, p0, Lcom/lewa/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 44
    .local v3, pooled:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, p3, :cond_2

    .line 45
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 46
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/lewa/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 58
    .end local v4           #result:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 50
    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_4

    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int v6, p2, v1

    aget-char v6, p1, v6

    if-eq v5, v6, :cond_3

    .line 52
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 53
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/lewa/gson/stream/StringPool;->pool:[Ljava/lang/String;

    aput-object v4, v5, v2

    goto :goto_1

    .line 50
    .end local v4           #result:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object v4, v3

    .line 58
    goto :goto_1
.end method
