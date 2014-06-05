.class public final Lcom/qq/taf/jce/dynamic/DynamicOutputStream;
.super Lcom/qq/taf/jce/JceOutputStream;
.source "DynamicOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "bs"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/qq/taf/jce/JceOutputStream;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    return-void
.end method


# virtual methods
.method public write(Lcom/qq/taf/jce/dynamic/JceField;)V
    .locals 14
    .parameter "field"

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 23
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/JceField;->getTag()I

    move-result v9

    .line 24
    .local v9, tag:I
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/ZeroField;

    if-eqz v10, :cond_1

    .line 25
    invoke-virtual {p0, v11, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(II)V

    .line 70
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 26
    .restart local p1
    :cond_1
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/IntField;

    if-eqz v10, :cond_2

    .line 27
    check-cast p1, Lcom/qq/taf/jce/dynamic/IntField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/IntField;->get()I

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(II)V

    goto :goto_0

    .line 28
    .restart local p1
    :cond_2
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/ShortField;

    if-eqz v10, :cond_3

    .line 29
    check-cast p1, Lcom/qq/taf/jce/dynamic/ShortField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/ShortField;->get()S

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(SI)V

    goto :goto_0

    .line 30
    .restart local p1
    :cond_3
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/ByteField;

    if-eqz v10, :cond_4

    .line 31
    check-cast p1, Lcom/qq/taf/jce/dynamic/ByteField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/ByteField;->get()B

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(BI)V

    goto :goto_0

    .line 32
    .restart local p1
    :cond_4
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/StringField;

    if-eqz v10, :cond_5

    .line 33
    check-cast p1, Lcom/qq/taf/jce/dynamic/StringField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/StringField;->get()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(Ljava/lang/String;I)V

    goto :goto_0

    .line 34
    .restart local p1
    :cond_5
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/ByteArrayField;

    if-eqz v10, :cond_6

    .line 35
    check-cast p1, Lcom/qq/taf/jce/dynamic/ByteArrayField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/ByteArrayField;->get()[B

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write([BI)V

    goto :goto_0

    .line 36
    .restart local p1
    :cond_6
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/ListField;

    if-eqz v10, :cond_7

    move-object v5, p1

    .line 37
    check-cast v5, Lcom/qq/taf/jce/dynamic/ListField;

    .line 38
    .local v5, lf:Lcom/qq/taf/jce/dynamic/ListField;
    invoke-virtual {p0, v12}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->reserve(I)V

    .line 39
    const/16 v10, 0x9

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->writeHead(BI)V

    .line 40
    invoke-virtual {v5}, Lcom/qq/taf/jce/dynamic/ListField;->size()I

    move-result v10

    invoke-virtual {p0, v10, v11}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(II)V

    .line 41
    invoke-virtual {v5}, Lcom/qq/taf/jce/dynamic/ListField;->get()[Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v0

    .local v0, arr$:[Lcom/qq/taf/jce/dynamic/JceField;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 42
    .local v3, jf:Lcom/qq/taf/jce/dynamic/JceField;
    invoke-virtual {p0, v3}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(Lcom/qq/taf/jce/dynamic/JceField;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 43
    .end local v0           #arr$:[Lcom/qq/taf/jce/dynamic/JceField;
    .end local v2           #i$:I
    .end local v3           #jf:Lcom/qq/taf/jce/dynamic/JceField;
    .end local v4           #len$:I
    .end local v5           #lf:Lcom/qq/taf/jce/dynamic/ListField;
    :cond_7
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/MapField;

    if-eqz v10, :cond_8

    move-object v6, p1

    .line 44
    check-cast v6, Lcom/qq/taf/jce/dynamic/MapField;

    .line 45
    .local v6, mf:Lcom/qq/taf/jce/dynamic/MapField;
    invoke-virtual {p0, v12}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->reserve(I)V

    .line 46
    invoke-virtual {p0, v12, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->writeHead(BI)V

    .line 47
    invoke-virtual {v6}, Lcom/qq/taf/jce/dynamic/MapField;->size()I

    move-result v7

    .line 48
    .local v7, ns:I
    invoke-virtual {p0, v7, v11}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(II)V

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v7, :cond_0

    .line 50
    invoke-virtual {v6, v1}, Lcom/qq/taf/jce/dynamic/MapField;->getKey(I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(Lcom/qq/taf/jce/dynamic/JceField;)V

    .line 51
    invoke-virtual {v6, v1}, Lcom/qq/taf/jce/dynamic/MapField;->getValue(I)Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(Lcom/qq/taf/jce/dynamic/JceField;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 53
    .end local v1           #i:I
    .end local v6           #mf:Lcom/qq/taf/jce/dynamic/MapField;
    .end local v7           #ns:I
    :cond_8
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/StructField;

    if-eqz v10, :cond_a

    move-object v8, p1

    .line 54
    check-cast v8, Lcom/qq/taf/jce/dynamic/StructField;

    .line 55
    .local v8, sf:Lcom/qq/taf/jce/dynamic/StructField;
    invoke-virtual {p0, v13}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->reserve(I)V

    .line 56
    const/16 v10, 0xa

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->writeHead(BI)V

    .line 57
    invoke-virtual {v8}, Lcom/qq/taf/jce/dynamic/StructField;->get()[Lcom/qq/taf/jce/dynamic/JceField;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/qq/taf/jce/dynamic/JceField;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v4, :cond_9

    aget-object v3, v0, v2

    .line 58
    .restart local v3       #jf:Lcom/qq/taf/jce/dynamic/JceField;
    invoke-virtual {p0, v3}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(Lcom/qq/taf/jce/dynamic/JceField;)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 59
    .end local v3           #jf:Lcom/qq/taf/jce/dynamic/JceField;
    :cond_9
    invoke-virtual {p0, v13}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->reserve(I)V

    .line 60
    const/16 v10, 0xb

    invoke-virtual {p0, v10, v11}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->writeHead(BI)V

    goto/16 :goto_0

    .line 61
    .end local v0           #arr$:[Lcom/qq/taf/jce/dynamic/JceField;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v8           #sf:Lcom/qq/taf/jce/dynamic/StructField;
    :cond_a
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/LongField;

    if-eqz v10, :cond_b

    .line 62
    check-cast p1, Lcom/qq/taf/jce/dynamic/LongField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/LongField;->get()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(JI)V

    goto/16 :goto_0

    .line 63
    .restart local p1
    :cond_b
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/FloatField;

    if-eqz v10, :cond_c

    .line 64
    check-cast p1, Lcom/qq/taf/jce/dynamic/FloatField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/FloatField;->get()F

    move-result v10

    invoke-virtual {p0, v10, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(FI)V

    goto/16 :goto_0

    .line 65
    .restart local p1
    :cond_c
    instance-of v10, p1, Lcom/qq/taf/jce/dynamic/DoubleField;

    if-eqz v10, :cond_d

    .line 66
    check-cast p1, Lcom/qq/taf/jce/dynamic/DoubleField;

    .end local p1
    invoke-virtual {p1}, Lcom/qq/taf/jce/dynamic/DoubleField;->get()D

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v9}, Lcom/qq/taf/jce/dynamic/DynamicOutputStream;->write(DI)V

    goto/16 :goto_0

    .line 68
    .restart local p1
    :cond_d
    new-instance v10, Lcom/qq/taf/jce/JceDecodeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknow JceField type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qq/taf/jce/JceDecodeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
