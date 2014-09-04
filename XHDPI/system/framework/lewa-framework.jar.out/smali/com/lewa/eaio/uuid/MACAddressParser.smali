.class Lcom/lewa/eaio/uuid/MACAddressParser;
.super Ljava/lang/Object;
.source "MACAddressParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method static parse(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "in"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/4 v9, -0x1

    .line 21
    move-object v6, p0

    .line 25
    .local v6, out:Ljava/lang/String;
    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 26
    .local v2, hexStart:I
    if-eq v2, v9, :cond_2

    const-string v7, "ETHER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_2

    .line 27
    const/16 v7, 0x20

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 28
    .local v1, hexEnd:I
    add-int/lit8 v7, v2, 0x2

    if-le v1, v7, :cond_0

    .line 29
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 72
    .end local v1           #hexEnd:I
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    :cond_1
    return-object v6

    .line 35
    :cond_2
    const/4 v4, 0x0

    .line 38
    .local v4, octets:I
    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v9, :cond_3

    .line 39
    const/16 v7, 0x2d

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 42
    :cond_3
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 44
    .local v3, lastIndex:I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    if-le v3, v7, :cond_4

    .line 45
    const/4 v6, 0x0

    goto :goto_0

    .line 49
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    .local v0, end:I
    add-int/lit8 v4, v4, 0x1

    .line 52
    move v5, v3

    .line 53
    .local v5, old:I
    :cond_5
    :goto_1
    if-eq v4, v13, :cond_7

    if-eq v3, v9, :cond_7

    if-le v3, v11, :cond_7

    .line 54
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 55
    sub-int v7, v5, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    sub-int v7, v5, v3

    if-ne v7, v12, :cond_5

    .line 56
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 57
    move v5, v3

    goto :goto_1

    .line 61
    :cond_7
    if-ne v4, v13, :cond_8

    if-le v3, v11, :cond_8

    .line 62
    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 65
    :cond_8
    const/4 v6, 0x0

    goto :goto_0
.end method
