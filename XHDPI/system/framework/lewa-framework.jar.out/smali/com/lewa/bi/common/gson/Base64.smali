.class public Lcom/lewa/bi/common/gson/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CA:[C

.field private static final IA:[I

.field private static final PADDINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "="

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "=="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "==="

    aput-object v4, v2, v3

    sput-object v2, Lcom/lewa/bi/common/gson/Base64;->PADDINGS:[Ljava/lang/String;

    .line 77
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    .line 79
    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    .line 81
    sget-object v2, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    array-length v1, v2

    .local v1, iS:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    sget-object v2, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    sget-object v3, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    sget-object v2, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    const/16 v3, 0x3d

    aput v5, v2, v3

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decode(Ljava/lang/String;)[B
    .locals 14
    .parameter "str"

    .prologue
    const/4 v12, 0x0

    .line 223
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 224
    .local v10, sLen:I
    :goto_0
    if-nez v10, :cond_2

    .line 225
    new-array v3, v12, [B

    .line 270
    :cond_0
    :goto_1
    return-object v3

    .end local v10           #sLen:I
    :cond_1
    move v10, v12

    .line 223
    goto :goto_0

    .line 229
    .restart local v10       #sLen:I
    :cond_2
    const/4 v11, 0x0

    .line 231
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 234
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 235
    add-int/lit8 v11, v11, 0x1

    .line 231
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 239
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 240
    const/4 v3, 0x0

    goto :goto_1

    .line 243
    :cond_5
    const/4 v7, 0x0

    .line 244
    .local v7, pad:I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 245
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 246
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 248
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 250
    .local v6, len:I
    new-array v3, v6, [B

    .line 252
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_4
    if-ge v2, v6, :cond_0

    .line 254
    const/4 v4, 0x0

    .line 255
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 256
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 257
    .local v0, c:I
    if-ltz v0, :cond_8

    .line 258
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 255
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_5

    .line 260
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 263
    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 264
    if-ge v1, v6, :cond_a

    .line 265
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 266
    if-ge v2, v6, :cond_b

    .line 267
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_a
    :goto_7
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .line 269
    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_4

    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_b
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_7
.end method

.method public static final decode([B)[B
    .locals 14
    .parameter "sArr"

    .prologue
    .line 102
    array-length v10, p0

    .line 106
    .local v10, sLen:I
    const/4 v11, 0x0

    .line 108
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 111
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gez v12, :cond_0

    .line 112
    add-int/lit8 v11, v11, 0x1

    .line 108
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_1
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_3

    .line 117
    const/4 v3, 0x0

    .line 148
    :cond_2
    return-object v3

    .line 119
    :cond_3
    const/4 v7, 0x0

    .line 120
    .local v7, pad:I
    move v4, v10

    :cond_4
    :goto_1
    const/4 v12, 0x1

    if-le v4, v12, :cond_5

    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-byte v13, p0, v4

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    if-gtz v12, :cond_5

    .line 121
    aget-byte v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_4

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 124
    :cond_5
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 126
    .local v6, len:I
    new-array v3, v6, [B

    .line 128
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_2
    if-ge v2, v6, :cond_2

    .line 130
    const/4 v4, 0x0

    .line 131
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_3
    const/4 v12, 0x4

    if-ge v5, v12, :cond_7

    .line 132
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    aget v0, v12, v13

    .line 133
    .local v0, c:I
    if-ltz v0, :cond_6

    .line 134
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 131
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_3

    .line 136
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 140
    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 141
    if-ge v1, v6, :cond_8

    .line 142
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 143
    if-ge v2, v6, :cond_9

    .line 144
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_8
    :goto_5
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .line 146
    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_2

    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_9
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_5
.end method

.method public static final decode([C)[B
    .locals 14
    .parameter "sArr"

    .prologue
    const/4 v12, 0x0

    .line 161
    if-eqz p0, :cond_1

    array-length v10, p0

    .line 162
    .local v10, sLen:I
    :goto_0
    if-nez v10, :cond_2

    .line 163
    new-array v3, v12, [B

    .line 207
    :cond_0
    :goto_1
    return-object v3

    .end local v10           #sLen:I
    :cond_1
    move v10, v12

    .line 161
    goto :goto_0

    .line 167
    .restart local v10       #sLen:I
    :cond_2
    const/4 v11, 0x0

    .line 169
    .local v11, sepCnt:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v10, :cond_4

    .line 172
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gez v12, :cond_3

    .line 173
    add-int/lit8 v11, v11, 0x1

    .line 169
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 177
    :cond_4
    sub-int v12, v10, v11

    rem-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_5

    .line 178
    const/4 v3, 0x0

    goto :goto_1

    .line 180
    :cond_5
    const/4 v7, 0x0

    .line 181
    .local v7, pad:I
    move v4, v10

    :cond_6
    :goto_3
    const/4 v12, 0x1

    if-le v4, v12, :cond_7

    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v4, v4, -0x1

    aget-char v13, p0, v4

    aget v12, v12, v13

    if-gtz v12, :cond_7

    .line 182
    aget-char v12, p0, v4

    const/16 v13, 0x3d

    if-ne v12, v13, :cond_6

    .line 183
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 185
    :cond_7
    sub-int v12, v10, v11

    mul-int/lit8 v12, v12, 0x6

    shr-int/lit8 v12, v12, 0x3

    sub-int v6, v12, v7

    .line 187
    .local v6, len:I
    new-array v3, v6, [B

    .line 189
    .local v3, dArr:[B
    const/4 v8, 0x0

    .local v8, s:I
    const/4 v1, 0x0

    .local v1, d:I
    move v2, v1

    .end local v1           #d:I
    .local v2, d:I
    :goto_4
    if-ge v2, v6, :cond_0

    .line 191
    const/4 v4, 0x0

    .line 192
    const/4 v5, 0x0

    .local v5, j:I
    move v9, v8

    .end local v8           #s:I
    .local v9, s:I
    :goto_5
    const/4 v12, 0x4

    if-ge v5, v12, :cond_9

    .line 193
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v8, v9, 0x1

    .end local v9           #s:I
    .restart local v8       #s:I
    aget-char v13, p0, v9

    aget v0, v12, v13

    .line 194
    .local v0, c:I
    if-ltz v0, :cond_8

    .line 195
    mul-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, 0x12

    shl-int v12, v0, v12

    or-int/2addr v4, v12

    .line 192
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    .end local v8           #s:I
    .restart local v9       #s:I
    goto :goto_5

    .line 197
    .end local v9           #s:I
    .restart local v8       #s:I
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 200
    .end local v0           #c:I
    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_9
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    shr-int/lit8 v12, v4, 0x10

    int-to-byte v12, v12

    aput-byte v12, v3, v2

    .line 201
    if-ge v1, v6, :cond_a

    .line 202
    add-int/lit8 v2, v1, 0x1

    .end local v1           #d:I
    .restart local v2       #d:I
    shr-int/lit8 v12, v4, 0x8

    int-to-byte v12, v12

    aput-byte v12, v3, v1

    .line 203
    if-ge v2, v6, :cond_b

    .line 204
    add-int/lit8 v1, v2, 0x1

    .end local v2           #d:I
    .restart local v1       #d:I
    int-to-byte v12, v4

    aput-byte v12, v3, v2

    :cond_a
    :goto_7
    move v2, v1

    .end local v1           #d:I
    .restart local v2       #d:I
    move v8, v9

    .line 206
    .end local v9           #s:I
    .restart local v8       #s:I
    goto :goto_4

    .end local v8           #s:I
    .restart local v9       #s:I
    :cond_b
    move v1, v2

    .end local v2           #d:I
    .restart local v1       #d:I
    goto :goto_7
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 21
    .parameter "s"

    .prologue
    .line 430
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 431
    .local v16, sLen:I
    if-nez v16, :cond_0

    .line 432
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 482
    :goto_0
    return-object v6

    .line 434
    :cond_0
    const/4 v14, 0x0

    .local v14, sIx:I
    add-int/lit8 v7, v16, -0x1

    .line 437
    .local v7, eIx:I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 438
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 441
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 442
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 445
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 446
    .local v12, pad:I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 447
    .local v2, cCnt:I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 449
    .local v17, sepCnt:I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 450
    .local v11, len:I
    new-array v6, v11, [B

    .line 453
    .local v6, dArr:[B
    const/4 v4, 0x0

    .line 454
    .local v4, d:I
    const/4 v3, 0x0

    .local v3, cc:I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, eLen:I
    move v5, v4

    .end local v4           #d:I
    .local v5, d:I
    move v15, v14

    .end local v14           #sIx:I
    .local v15, sIx:I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 456
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v20

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 461
    .local v9, i:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 462
    add-int/lit8 v5, v4, 0x1

    .end local v4           #d:I
    .restart local v5       #d:I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 463
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 466
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 467
    add-int/lit8 v14, v15, 0x2

    .line 468
    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    move v15, v14

    .line 470
    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_6

    .line 445
    .end local v2           #cCnt:I
    .end local v3           #cc:I
    .end local v5           #d:I
    .end local v6           #dArr:[B
    .end local v8           #eLen:I
    .end local v9           #i:I
    .end local v11           #len:I
    .end local v12           #pad:I
    .end local v15           #sIx:I
    .end local v17           #sepCnt:I
    .restart local v14       #sIx:I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 447
    .restart local v2       #cCnt:I
    .restart local v12       #pad:I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 472
    .end local v14           #sIx:I
    .restart local v3       #cc:I
    .restart local v5       #d:I
    .restart local v6       #dArr:[B
    .restart local v8       #eLen:I
    .restart local v11       #len:I
    .restart local v15       #sIx:I
    .restart local v17       #sepCnt:I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 474
    const/4 v9, 0x0

    .line 475
    .restart local v9       #i:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 476
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 475
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_8

    .line 478
    :cond_8
    const/16 v13, 0x10

    .local v13, r:I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 479
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 478
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    goto :goto_9

    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #r:I
    :cond_9
    move v4, v5

    .end local v5           #d:I
    .restart local v4       #d:I
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto/16 :goto_0

    .end local v14           #sIx:I
    .restart local v9       #i:I
    .restart local v15       #sIx:I
    :cond_a
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto :goto_7
.end method

.method public static final decodeFast([B)[B
    .locals 21
    .parameter "sArr"

    .prologue
    .line 292
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    .line 293
    .local v16, sLen:I
    if-nez v16, :cond_0

    .line 294
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 343
    :goto_0
    return-object v6

    .line 296
    :cond_0
    const/4 v14, 0x0

    .local v14, sIx:I
    add-int/lit8 v7, v16, -0x1

    .line 299
    .local v7, eIx:I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-byte v19, p0, v14

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 300
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 303
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-byte v19, p0, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 304
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 307
    :cond_2
    aget-byte v18, p0, v7

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    aget-byte v18, p0, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 308
    .local v12, pad:I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 309
    .local v2, cCnt:I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    aget-byte v18, p0, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 311
    .local v17, sepCnt:I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 312
    .local v11, len:I
    new-array v6, v11, [B

    .line 315
    .local v6, dArr:[B
    const/4 v4, 0x0

    .line 316
    .local v4, d:I
    const/4 v3, 0x0

    .local v3, cc:I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, eLen:I
    move v5, v4

    .end local v4           #d:I
    .local v5, d:I
    move v15, v14

    .end local v14           #sIx:I
    .local v15, sIx:I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 318
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-byte v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    aget-byte v20, p0, v14

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-byte v20, p0, v15

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    aget-byte v20, p0, v14

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 322
    .local v9, i:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 323
    add-int/lit8 v5, v4, 0x1

    .end local v4           #d:I
    .restart local v5       #d:I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 324
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 327
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 328
    add-int/lit8 v14, v15, 0x2

    .line 329
    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    move v15, v14

    .line 331
    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_6

    .line 307
    .end local v2           #cCnt:I
    .end local v3           #cc:I
    .end local v5           #d:I
    .end local v6           #dArr:[B
    .end local v8           #eLen:I
    .end local v9           #i:I
    .end local v11           #len:I
    .end local v12           #pad:I
    .end local v15           #sIx:I
    .end local v17           #sepCnt:I
    .restart local v14       #sIx:I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 309
    .restart local v2       #cCnt:I
    .restart local v12       #pad:I
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 333
    .end local v14           #sIx:I
    .restart local v3       #cc:I
    .restart local v5       #d:I
    .restart local v6       #dArr:[B
    .restart local v8       #eLen:I
    .restart local v11       #len:I
    .restart local v15       #sIx:I
    .restart local v17       #sepCnt:I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 335
    const/4 v9, 0x0

    .line 336
    .restart local v9       #i:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 337
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-byte v19, p0, v15

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 336
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_8

    .line 339
    :cond_8
    const/16 v13, 0x10

    .local v13, r:I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 340
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 339
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    goto :goto_9

    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #r:I
    :cond_9
    move v4, v5

    .end local v5           #d:I
    .restart local v4       #d:I
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto/16 :goto_0

    .end local v14           #sIx:I
    .restart local v9       #i:I
    .restart local v15       #sIx:I
    :cond_a
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto :goto_7
.end method

.method public static final decodeFast([C)[B
    .locals 21
    .parameter "sArr"

    .prologue
    .line 361
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    .line 362
    .local v16, sLen:I
    if-nez v16, :cond_0

    .line 363
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 412
    :goto_0
    return-object v6

    .line 365
    :cond_0
    const/4 v14, 0x0

    .local v14, sIx:I
    add-int/lit8 v7, v16, -0x1

    .line 368
    .local v7, eIx:I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-char v19, p0, v14

    aget v18, v18, v19

    if-gez v18, :cond_1

    .line 369
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 372
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    aget-char v19, p0, v7

    aget v18, v18, v19

    if-gez v18, :cond_2

    .line 373
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 376
    :cond_2
    aget-char v18, p0, v7

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    add-int/lit8 v18, v7, -0x1

    aget-char v18, p0, v18

    const/16 v19, 0x3d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 377
    .local v12, pad:I
    :goto_3
    sub-int v18, v7, v14

    add-int/lit8 v2, v18, 0x1

    .line 378
    .local v2, cCnt:I
    const/16 v18, 0x4c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0x4c

    aget-char v18, p0, v18

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    div-int/lit8 v18, v2, 0x4e

    :goto_4
    shl-int/lit8 v17, v18, 0x1

    .line 380
    .local v17, sepCnt:I
    :goto_5
    sub-int v18, v2, v17

    mul-int/lit8 v18, v18, 0x6

    shr-int/lit8 v18, v18, 0x3

    sub-int v11, v18, v12

    .line 381
    .local v11, len:I
    new-array v6, v11, [B

    .line 384
    .local v6, dArr:[B
    const/4 v4, 0x0

    .line 385
    .local v4, d:I
    const/4 v3, 0x0

    .local v3, cc:I
    div-int/lit8 v18, v11, 0x3

    mul-int/lit8 v8, v18, 0x3

    .local v8, eLen:I
    move v5, v4

    .end local v4           #d:I
    .local v5, d:I
    move v15, v14

    .end local v14           #sIx:I
    .local v15, sIx:I
    :goto_6
    if-ge v5, v8, :cond_7

    .line 387
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-char v19, p0, v15

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x12

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    aget-char v20, p0, v14

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0xc

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-char v20, p0, v15

    aget v19, v19, v20

    shl-int/lit8 v19, v19, 0x6

    or-int v18, v18, v19

    sget-object v19, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    aget-char v20, p0, v14

    aget v19, v19, v20

    or-int v9, v18, v19

    .line 391
    .local v9, i:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int/lit8 v18, v9, 0x10

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 392
    add-int/lit8 v5, v4, 0x1

    .end local v4           #d:I
    .restart local v5       #d:I
    shr-int/lit8 v18, v9, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v4

    .line 393
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    int-to-byte v0, v9

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 396
    if-lez v17, :cond_a

    add-int/lit8 v3, v3, 0x1

    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 397
    add-int/lit8 v14, v15, 0x2

    .line 398
    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    const/4 v3, 0x0

    :goto_7
    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    move v15, v14

    .line 400
    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_6

    .line 376
    .end local v2           #cCnt:I
    .end local v3           #cc:I
    .end local v5           #d:I
    .end local v6           #dArr:[B
    .end local v8           #eLen:I
    .end local v9           #i:I
    .end local v11           #len:I
    .end local v12           #pad:I
    .end local v15           #sIx:I
    .end local v17           #sepCnt:I
    .restart local v14       #sIx:I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 378
    .restart local v2       #cCnt:I
    .restart local v12       #pad:I
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 402
    .end local v14           #sIx:I
    .restart local v3       #cc:I
    .restart local v5       #d:I
    .restart local v6       #dArr:[B
    .restart local v8       #eLen:I
    .restart local v11       #len:I
    .restart local v15       #sIx:I
    .restart local v17       #sepCnt:I
    :cond_7
    if-ge v5, v11, :cond_9

    .line 404
    const/4 v9, 0x0

    .line 405
    .restart local v9       #i:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_8
    sub-int v18, v7, v12

    move/from16 v0, v18

    if-gt v15, v0, :cond_8

    .line 406
    sget-object v18, Lcom/lewa/bi/common/gson/Base64;->IA:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    aget-char v19, p0, v15

    aget v18, v18, v19

    mul-int/lit8 v19, v10, 0x6

    rsub-int/lit8 v19, v19, 0x12

    shl-int v18, v18, v19

    or-int v9, v9, v18

    .line 405
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14           #sIx:I
    .restart local v15       #sIx:I
    goto :goto_8

    .line 408
    :cond_8
    const/16 v13, 0x10

    .local v13, r:I
    :goto_9
    if-ge v5, v11, :cond_9

    .line 409
    add-int/lit8 v4, v5, 0x1

    .end local v5           #d:I
    .restart local v4       #d:I
    shr-int v18, v9, v13

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v6, v5

    .line 408
    add-int/lit8 v13, v13, -0x8

    move v5, v4

    .end local v4           #d:I
    .restart local v5       #d:I
    goto :goto_9

    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #r:I
    :cond_9
    move v4, v5

    .end local v5           #d:I
    .restart local v4       #d:I
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto/16 :goto_0

    .end local v14           #sIx:I
    .restart local v9       #i:I
    .restart local v15       #sIx:I
    :cond_a
    move v14, v15

    .end local v15           #sIx:I
    .restart local v14       #sIx:I
    goto :goto_7
.end method

.method public static final decodeUrlFriendly(Ljava/lang/String;)[B
    .locals 3
    .parameter "base64"

    .prologue
    const/16 v2, 0x2e

    const/16 v1, 0x2d

    .line 495
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 496
    const/16 v0, 0x2b

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 498
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 499
    const/16 v0, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 501
    :cond_1
    invoke-static {p0}, Lcom/lewa/bi/common/gson/Base64;->padding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/gson/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final encodeToByte([BZ)[B
    .locals 15
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 517
    if-eqz p0, :cond_1

    array-length v11, p0

    .line 518
    .local v11, sLen:I
    :goto_0
    if-nez v11, :cond_2

    .line 519
    const/4 v12, 0x0

    new-array v4, v12, [B

    .line 557
    :cond_0
    :goto_1
    return-object v4

    .line 517
    .end local v11           #sLen:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 521
    .restart local v11       #sLen:I
    :cond_2
    div-int/lit8 v12, v11, 0x3

    mul-int/lit8 v6, v12, 0x3

    .line 522
    .local v6, eLen:I
    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v0, v12, 0x2

    .line 523
    .local v0, cCnt:I
    if-eqz p1, :cond_3

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x4c

    shl-int/lit8 v12, v12, 0x1

    :goto_2
    add-int v5, v0, v12

    .line 524
    .local v5, dLen:I
    new-array v4, v5, [B

    .line 527
    .local v4, dArr:[B
    const/4 v9, 0x0

    .local v9, s:I
    const/4 v2, 0x0

    .local v2, d:I
    const/4 v1, 0x0

    .local v1, cc:I
    move v3, v2

    .end local v2           #d:I
    .local v3, d:I
    move v10, v9

    .end local v9           #s:I
    .local v10, s:I
    :goto_3
    if-ge v10, v6, :cond_4

    .line 529
    add-int/lit8 v9, v10, 0x1

    .end local v10           #s:I
    .restart local v9       #s:I
    aget-byte v12, p0, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9           #s:I
    .restart local v10       #s:I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v9, v10, 0x1

    .end local v10           #s:I
    .restart local v9       #s:I
    aget-byte v13, p0, v10

    and-int/lit16 v13, v13, 0xff

    or-int v7, v12, v13

    .line 532
    .local v7, i:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 533
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 534
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v3

    .line 535
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    and-int/lit8 v13, v7, 0x3f

    aget-char v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v4, v2

    .line 538
    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x13

    if-ne v1, v12, :cond_7

    add-int/lit8 v12, v5, -0x2

    if-ge v3, v12, :cond_7

    .line 539
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    const/16 v12, 0xd

    aput-byte v12, v4, v3

    .line 540
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    const/16 v12, 0xa

    aput-byte v12, v4, v2

    .line 541
    const/4 v1, 0x0

    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    :goto_4
    move v3, v2

    .end local v2           #d:I
    .restart local v3       #d:I
    move v10, v9

    .line 543
    .end local v9           #s:I
    .restart local v10       #s:I
    goto :goto_3

    .line 523
    .end local v1           #cc:I
    .end local v3           #d:I
    .end local v4           #dArr:[B
    .end local v5           #dLen:I
    .end local v7           #i:I
    .end local v10           #s:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 546
    .restart local v1       #cc:I
    .restart local v3       #d:I
    .restart local v4       #dArr:[B
    .restart local v5       #dLen:I
    .restart local v10       #s:I
    :cond_4
    sub-int v8, v11, v6

    .line 547
    .local v8, left:I
    if-lez v8, :cond_0

    .line 549
    aget-byte v12, p0, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v12, 0xa

    const/4 v12, 0x2

    if-ne v8, v12, :cond_5

    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x2

    :goto_5
    or-int v7, v13, v12

    .line 552
    .restart local v7       #i:I
    add-int/lit8 v12, v5, -0x4

    sget-object v13, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    shr-int/lit8 v14, v7, 0xc

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 553
    add-int/lit8 v12, v5, -0x3

    sget-object v13, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 554
    add-int/lit8 v13, v5, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    and-int/lit8 v14, v7, 0x3f

    aget-char v12, v12, v14

    int-to-byte v12, v12

    :goto_6
    aput-byte v12, v4, v13

    .line 555
    add-int/lit8 v12, v5, -0x1

    const/16 v13, 0x3d

    aput-byte v13, v4, v12

    goto/16 :goto_1

    .line 549
    .end local v7           #i:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 554
    .restart local v7       #i:I
    :cond_6
    const/16 v12, 0x3d

    goto :goto_6

    .end local v8           #left:I
    .end local v10           #s:I
    .restart local v9       #s:I
    :cond_7
    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    goto :goto_4
.end method

.method public static final encodeToChar([BZ)[C
    .locals 15
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 573
    if-eqz p0, :cond_1

    array-length v11, p0

    .line 574
    .local v11, sLen:I
    :goto_0
    if-nez v11, :cond_2

    .line 575
    const/4 v12, 0x0

    new-array v4, v12, [C

    .line 613
    :cond_0
    :goto_1
    return-object v4

    .line 573
    .end local v11           #sLen:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 577
    .restart local v11       #sLen:I
    :cond_2
    div-int/lit8 v12, v11, 0x3

    mul-int/lit8 v6, v12, 0x3

    .line 578
    .local v6, eLen:I
    add-int/lit8 v12, v11, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    shl-int/lit8 v0, v12, 0x2

    .line 579
    .local v0, cCnt:I
    if-eqz p1, :cond_3

    add-int/lit8 v12, v0, -0x1

    div-int/lit8 v12, v12, 0x4c

    shl-int/lit8 v12, v12, 0x1

    :goto_2
    add-int v5, v0, v12

    .line 580
    .local v5, dLen:I
    new-array v4, v5, [C

    .line 583
    .local v4, dArr:[C
    const/4 v9, 0x0

    .local v9, s:I
    const/4 v2, 0x0

    .local v2, d:I
    const/4 v1, 0x0

    .local v1, cc:I
    move v3, v2

    .end local v2           #d:I
    .local v3, d:I
    move v10, v9

    .end local v9           #s:I
    .local v10, s:I
    :goto_3
    if-ge v10, v6, :cond_4

    .line 585
    add-int/lit8 v9, v10, 0x1

    .end local v10           #s:I
    .restart local v9       #s:I
    aget-byte v12, p0, v10

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9           #s:I
    .restart local v10       #s:I
    aget-byte v13, p0, v9

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    add-int/lit8 v9, v10, 0x1

    .end local v10           #s:I
    .restart local v9       #s:I
    aget-byte v13, p0, v10

    and-int/lit16 v13, v13, 0xff

    or-int v7, v12, v13

    .line 588
    .local v7, i:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x12

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 589
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0xc

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 590
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v3

    .line 591
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    and-int/lit8 v13, v7, 0x3f

    aget-char v12, v12, v13

    aput-char v12, v4, v2

    .line 594
    if-eqz p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x13

    if-ne v1, v12, :cond_7

    add-int/lit8 v12, v5, -0x2

    if-ge v3, v12, :cond_7

    .line 595
    add-int/lit8 v2, v3, 0x1

    .end local v3           #d:I
    .restart local v2       #d:I
    const/16 v12, 0xd

    aput-char v12, v4, v3

    .line 596
    add-int/lit8 v3, v2, 0x1

    .end local v2           #d:I
    .restart local v3       #d:I
    const/16 v12, 0xa

    aput-char v12, v4, v2

    .line 597
    const/4 v1, 0x0

    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    :goto_4
    move v3, v2

    .end local v2           #d:I
    .restart local v3       #d:I
    move v10, v9

    .line 599
    .end local v9           #s:I
    .restart local v10       #s:I
    goto :goto_3

    .line 579
    .end local v1           #cc:I
    .end local v3           #d:I
    .end local v4           #dArr:[C
    .end local v5           #dLen:I
    .end local v7           #i:I
    .end local v10           #s:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 602
    .restart local v1       #cc:I
    .restart local v3       #d:I
    .restart local v4       #dArr:[C
    .restart local v5       #dLen:I
    .restart local v10       #s:I
    :cond_4
    sub-int v8, v11, v6

    .line 603
    .local v8, left:I
    if-lez v8, :cond_0

    .line 605
    aget-byte v12, p0, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v13, v12, 0xa

    const/4 v12, 0x2

    if-ne v8, v12, :cond_5

    add-int/lit8 v12, v11, -0x1

    aget-byte v12, p0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x2

    :goto_5
    or-int v7, v13, v12

    .line 608
    .restart local v7       #i:I
    add-int/lit8 v12, v5, -0x4

    sget-object v13, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    shr-int/lit8 v14, v7, 0xc

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 609
    add-int/lit8 v12, v5, -0x3

    sget-object v13, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    ushr-int/lit8 v14, v7, 0x6

    and-int/lit8 v14, v14, 0x3f

    aget-char v13, v13, v14

    aput-char v13, v4, v12

    .line 610
    add-int/lit8 v13, v5, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    sget-object v12, Lcom/lewa/bi/common/gson/Base64;->CA:[C

    and-int/lit8 v14, v7, 0x3f

    aget-char v12, v12, v14

    :goto_6
    aput-char v12, v4, v13

    .line 611
    add-int/lit8 v12, v5, -0x1

    const/16 v13, 0x3d

    aput-char v13, v4, v12

    goto/16 :goto_1

    .line 605
    .end local v7           #i:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    .line 610
    .restart local v7       #i:I
    :cond_6
    const/16 v12, 0x3d

    goto :goto_6

    .end local v8           #left:I
    .end local v10           #s:I
    .restart local v9       #s:I
    :cond_7
    move v2, v3

    .end local v3           #d:I
    .restart local v2       #d:I
    goto :goto_4
.end method

.method public static final encodeToString([BZ)Ljava/lang/String;
    .locals 2
    .parameter "sArr"
    .parameter "lineSep"

    .prologue
    .line 630
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/lewa/bi/common/gson/Base64;->encodeToChar([BZ)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static final encodeUrlFriendly([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 634
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lewa/bi/common/gson/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/bi/common/gson/Base64;->getUrlFriendlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUrlFriendlyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "base64"

    .prologue
    const/16 v2, 0x2f

    const/16 v1, 0x2b

    .line 642
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 643
    const/16 v0, 0x2e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 645
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 646
    const/16 v0, 0x2d

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 648
    :cond_1
    invoke-static {p0}, Lcom/lewa/bi/common/gson/Base64;->removePadding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static padding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "base64"

    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v0, v1, 0x4

    .line 656
    .local v0, charsToPad:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 659
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lewa/bi/common/gson/Base64;->PADDINGS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static removePadding(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "base64"

    .prologue
    .line 666
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 667
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 668
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 670
    .end local p0
    :cond_0
    return-object p0
.end method
