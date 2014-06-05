.class public final Lcom/qq/taf/jce/dynamic/DynamicInputStream;
.super Ljava/lang/Object;
.source "DynamicInputStream.java"


# instance fields
.field private bs:Ljava/nio/ByteBuffer;

.field private sServerEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->sServerEncoding:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bs"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->sServerEncoding:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method

.method private readString(Lcom/qq/taf/jce/JceInputStream$HeadData;I)Lcom/qq/taf/jce/dynamic/JceField;
    .locals 4
    .parameter "hd"
    .parameter "len"

    .prologue
    .line 111
    new-array v2, p2, [B

    .line 112
    .local v2, ss:[B
    iget-object v3, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, s:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1           #s:Ljava/lang/String;
    iget-object v3, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->sServerEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .restart local v1       #s:Ljava/lang/String;
    :goto_0
    iget v3, p1, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v1, v3}, Lcom/qq/taf/jce/dynamic/JceField;->create(Ljava/lang/String;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v3

    return-object v3

    .line 117
    .end local v1           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public read()Lcom/qq/taf/jce/dynamic/JceField;
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 34
    :try_start_0
    new-instance v4, Lcom/qq/taf/jce/JceInputStream$HeadData;

    invoke-direct {v4}, Lcom/qq/taf/jce/JceInputStream$HeadData;-><init>()V

    .line 35
    .local v4, hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-static {v4, v11}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    .line 36
    iget-byte v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    packed-switch v11, :pswitch_data_0

    move-object v11, v12

    .line 107
    .end local v4           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :goto_0
    return-object v11

    .line 38
    .restart local v4       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :pswitch_0
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    iget v13, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11, v13}, Lcom/qq/taf/jce/dynamic/JceField;->create(BI)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 40
    :pswitch_1
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    iget v13, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11, v13}, Lcom/qq/taf/jce/dynamic/JceField;->create(SI)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 42
    :pswitch_2
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iget v13, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11, v13}, Lcom/qq/taf/jce/dynamic/JceField;->create(II)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    iget v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v13, v14, v11}, Lcom/qq/taf/jce/dynamic/JceField;->create(JI)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 46
    :pswitch_4
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v11

    iget v13, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11, v13}, Lcom/qq/taf/jce/dynamic/JceField;->create(FI)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 48
    :pswitch_5
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v13

    iget v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v13, v14, v11}, Lcom/qq/taf/jce/dynamic/JceField;->create(DI)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 51
    :pswitch_6
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 52
    .local v7, len:I
    if-gez v7, :cond_0

    .line 53
    add-int/lit16 v7, v7, 0x100

    .line 54
    :cond_0
    invoke-direct {p0, v4, v7}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->readString(Lcom/qq/taf/jce/JceInputStream$HeadData;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 57
    .end local v7           #len:I
    :pswitch_7
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    invoke-direct {p0, v4, v11}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->readString(Lcom/qq/taf/jce/JceInputStream$HeadData;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto :goto_0

    .line 60
    :pswitch_8
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    check-cast v11, Lcom/qq/taf/jce/dynamic/NumberField;

    invoke-virtual {v11}, Lcom/qq/taf/jce/dynamic/NumberField;->intValue()I

    move-result v7

    .line 61
    .restart local v7       #len:I
    new-array v3, v7, [Lcom/qq/taf/jce/dynamic/JceField;

    .line 62
    .local v3, fs:[Lcom/qq/taf/jce/dynamic/JceField;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    aput-object v11, v3, v5

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 64
    :cond_1
    iget v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v3, v11}, Lcom/qq/taf/jce/dynamic/JceField;->createList([Lcom/qq/taf/jce/dynamic/JceField;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto/16 :goto_0

    .line 68
    .end local v3           #fs:[Lcom/qq/taf/jce/dynamic/JceField;
    .end local v5           #i:I
    .end local v7           #len:I
    :pswitch_9
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    check-cast v11, Lcom/qq/taf/jce/dynamic/NumberField;

    invoke-virtual {v11}, Lcom/qq/taf/jce/dynamic/NumberField;->intValue()I

    move-result v7

    .line 69
    .restart local v7       #len:I
    new-array v6, v7, [Lcom/qq/taf/jce/dynamic/JceField;

    .line 70
    .local v6, keys:[Lcom/qq/taf/jce/dynamic/JceField;
    new-array v10, v7, [Lcom/qq/taf/jce/dynamic/JceField;

    .line 71
    .local v10, values:[Lcom/qq/taf/jce/dynamic/JceField;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v7, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    aput-object v11, v6, v5

    .line 73
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    aput-object v11, v10, v5

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 75
    :cond_2
    iget v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v6, v10, v11}, Lcom/qq/taf/jce/dynamic/JceField;->createMap([Lcom/qq/taf/jce/dynamic/JceField;[Lcom/qq/taf/jce/dynamic/JceField;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto/16 :goto_0

    .line 79
    .end local v5           #i:I
    .end local v6           #keys:[Lcom/qq/taf/jce/dynamic/JceField;
    .end local v7           #len:I
    .end local v10           #values:[Lcom/qq/taf/jce/dynamic/JceField;
    :pswitch_a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, ls:Ljava/util/List;,"Ljava/util/List<Lcom/qq/taf/jce/dynamic/JceField;>;"
    :goto_3
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v2

    .line 82
    .local v2, f:Lcom/qq/taf/jce/dynamic/JceField;
    if-nez v2, :cond_3

    .line 86
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/qq/taf/jce/dynamic/JceField;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/qq/taf/jce/dynamic/JceField;

    iget v13, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11, v13}, Lcom/qq/taf/jce/dynamic/JceField;->createStruct([Lcom/qq/taf/jce/dynamic/JceField;I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto/16 :goto_0

    .line 84
    :cond_3
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 104
    .end local v2           #f:Lcom/qq/taf/jce/dynamic/JceField;
    .end local v4           #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    .end local v8           #ls:Ljava/util/List;,"Ljava/util/List<Lcom/qq/taf/jce/dynamic/JceField;>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/nio/BufferUnderflowException;
    move-object v11, v12

    .line 105
    goto/16 :goto_0

    .end local v1           #e:Ljava/nio/BufferUnderflowException;
    .restart local v4       #hd:Lcom/qq/taf/jce/JceInputStream$HeadData;
    :pswitch_b
    move-object v11, v12

    .line 89
    goto/16 :goto_0

    .line 91
    :pswitch_c
    iget v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    invoke-static {v11}, Lcom/qq/taf/jce/dynamic/JceField;->createZero(I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    goto/16 :goto_0

    .line 94
    :pswitch_d
    iget v9, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->tag:I

    .line 95
    .local v9, tag:I
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-static {v4, v11}, Lcom/qq/taf/jce/JceInputStream;->readHead(Lcom/qq/taf/jce/JceInputStream$HeadData;Ljava/nio/ByteBuffer;)I

    .line 96
    iget-byte v11, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    if-eqz v11, :cond_4

    .line 97
    new-instance v11, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "type mismatch, simple_list only support byte, tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-byte v14, v4, Lcom/qq/taf/jce/JceInputStream$HeadData;->type:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->read()Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v11

    check-cast v11, Lcom/qq/taf/jce/dynamic/NumberField;

    invoke-virtual {v11}, Lcom/qq/taf/jce/dynamic/NumberField;->intValue()I

    move-result v7

    .line 99
    .restart local v7       #len:I
    new-array v0, v7, [B

    .line 100
    .local v0, data:[B
    iget-object v11, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->bs:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-static {v0, v9}, Lcom/qq/taf/jce/dynamic/JceField;->create([BI)Lcom/qq/taf/jce/dynamic/JceField;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setServerEncoding(Ljava/lang/String;)I
    .locals 1
    .parameter "se"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qq/taf/jce/dynamic/DynamicInputStream;->sServerEncoding:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    return v0
.end method
