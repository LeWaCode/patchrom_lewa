.class public Lorg/kxml2/wap/WbxmlSerializer;
.super Ljava/lang/Object;
.source "WbxmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field private attrPage:I

.field attrStartTable:Ljava/util/Hashtable;

.field attrValueTable:Ljava/util/Hashtable;

.field attributes:Ljava/util/Vector;

.field buf:Ljava/io/ByteArrayOutputStream;

.field depth:I

.field private encoding:Ljava/lang/String;

.field name:Ljava/lang/String;

.field namespace:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field pending:Ljava/lang/String;

.field stringTable:Ljava/util/Hashtable;

.field stringTableBuf:Ljava/io/ByteArrayOutputStream;

.field private tagPage:I

.field tagTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 82
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    return-void
.end method

.method static writeInt(Ljava/io/OutputStream;I)V
    .locals 4
    .parameter "out"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 446
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 449
    .local v1, idx:I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    and-int/lit8 v3, p1, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 450
    shr-int/lit8 p1, p1, 0x7

    .line 452
    if-nez p1, :cond_1

    move v1, v2

    .line 454
    .end local v2           #idx:I
    .restart local v1       #idx:I
    :goto_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 455
    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v0, v1

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 457
    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 458
    return-void

    .end local v1           #idx:I
    .restart local v2       #idx:I
    :cond_1
    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_0
.end method

.method private writeStr(Ljava/lang/String;)V
    .locals 10
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x41

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/16 v6, 0x83

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, p0:I
    const/4 v0, 0x0

    .line 348
    .local v0, lastCut:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 350
    .local v1, len:I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 351
    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v9, :cond_0

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 354
    :cond_0
    move v3, v2

    .line 355
    .local v3, p1:I
    :goto_2
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_1

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 359
    :cond_1
    sub-int v4, v3, v2

    const/16 v5, 0xa

    if-le v4, v5, :cond_2

    .line 361
    if-le v2, v0, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 364
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 365
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 380
    :goto_3
    move v0, v3

    .line 382
    :cond_2
    move v2, v3

    .line 383
    goto :goto_0

    .line 369
    :cond_3
    if-le v2, v0, :cond_4

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_4

    .line 370
    add-int/lit8 v2, v2, -0x1

    .line 373
    :cond_4
    if-le v2, v0, :cond_5

    .line 374
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 377
    :cond_5
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 378
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_3

    .line 385
    .end local v3           #p1:I
    :cond_6
    if-ge v0, v1, :cond_7

    .line 386
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 387
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 389
    :cond_7
    return-void
.end method

.method private final writeStrT(Ljava/lang/String;Z)V
    .locals 9
    .parameter "s"
    .parameter "mayPrependSpace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x20

    .line 468
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 470
    .local v1, idx:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 471
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 497
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 475
    .local v0, i:I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    if-eqz p2, :cond_3

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 483
    :goto_1
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    .line 485
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 488
    .local v2, j:I
    if-le v2, v8, :cond_2

    .line 489
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTable:Ljava/util/Hashtable;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    add-int v6, v0, v2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_2
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v3, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 480
    .end local v2           #j:I
    :cond_3
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-static {v3, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "namespace"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 103
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .parameter "cdsect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    return-void
.end method

.method public checkPending(Z)V
    .locals 8
    .parameter "degenerated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 250
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 188
    .local v2, len:I
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 191
    .local v1, idx:[I
    if-nez v1, :cond_4

    .line 192
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 215
    :goto_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v2, :cond_d

    .line 216
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 218
    if-nez v1, :cond_9

    .line 219
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 220
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    .line 230
    :goto_4
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v1, v3

    check-cast v1, [I

    .line 231
    if-nez v1, :cond_b

    .line 232
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 242
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 192
    .end local v0           #i:I
    :cond_1
    const/16 v3, 0x44

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x84

    goto :goto_1

    :cond_3
    const/16 v3, 0xc4

    goto :goto_1

    .line 200
    :cond_4
    aget v3, v1, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    if-eq v3, v5, :cond_5

    .line 201
    aget v3, v1, v6

    iput v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    .line 202
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    :cond_5
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_7

    if-eqz p1, :cond_6

    aget v3, v1, v7

    :goto_6
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    aget v3, v1, v7

    or-int/lit8 v3, v3, 0x40

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    aget v3, v1, v7

    or-int/lit16 v3, v3, 0x80

    goto :goto_6

    :cond_8
    aget v3, v1, v7

    or-int/lit16 v3, v3, 0xc0

    goto :goto_6

    .line 223
    .restart local v0       #i:I
    :cond_9
    aget v3, v1, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v3, v5, :cond_a

    .line 224
    aget v3, v1, v6

    iput v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    .line 225
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 228
    :cond_a
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 235
    :cond_b
    aget v3, v1, v6

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    if-eq v3, v5, :cond_c

    .line 236
    aget v3, v1, v6

    iput v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    .line 237
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 238
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrPage:I

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    :cond_c
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    aget v5, v1, v7

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 245
    :cond_d
    if-lez v2, :cond_e

    .line 246
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 248
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 249
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlSerializer;->attributes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 116
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 2
    .parameter "docdecl"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot write docdecl for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 163
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 171
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 172
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 402
    :goto_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    .line 404
    return-object p0

    .line 400
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 2
    .parameter "er"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EntityReference not supported for WBXML"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "nsp"
    .parameter "create"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .parameter "sp"

    .prologue
    .line 155
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 2
    .parameter "pi"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PI NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "attrStartTable"

    .prologue
    .line 525
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 526
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 527
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 528
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrStartTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "attrValueTable"

    .prologue
    .line 540
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 541
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 542
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit16 v3, v0, 0x85

    aput v3, v1, v2

    .line 543
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->attrValueTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    if-nez p2, :cond_0

    const-string p2, "UTF-8"

    .end local p2
    :cond_0
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    .line 273
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    .line 274
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->stringTableBuf:Ljava/io/ByteArrayOutputStream;

    .line 277
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 2
    .parameter "writer"

    .prologue
    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wbxml requires an OutputStream!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "nsp"

    .prologue
    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 4
    .parameter "page"
    .parameter "tagTable"

    .prologue
    .line 507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 508
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    .line 509
    const/4 v2, 0x2

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x5

    aput v3, v1, v2

    .line 510
    .local v1, idx:[I
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlSerializer;->tagTable:Ljava/util/Hashtable;

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .end local v1           #idx:[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter "s"
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 292
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 305
    :cond_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NSP NYI"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 318
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlSerializer;->pending:Ljava/lang/String;

    .line 319
    iget v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlSerializer;->depth:I

    .line 321
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 337
    invoke-direct {p0, p1}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 339
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter "chars"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 328
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlSerializer;->writeStr(Ljava/lang/String;)V

    .line 330
    return-object p0
.end method

.method writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->encoding:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 462
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 463
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 464
    return-void
.end method

.method public writeWapExtension(ILjava/lang/Object;)V
    .locals 3
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0, v2}, Lorg/kxml2/wap/WbxmlSerializer;->checkPending(Z)V

    .line 412
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 413
    sparse-switch p1, :sswitch_data_0

    .line 438
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 420
    :sswitch_0
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    .line 421
    .local v0, bytes:[B
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    array-length v2, v0

    invoke-static {v1, v2}, Lorg/kxml2/wap/WbxmlSerializer;->writeInt(Ljava/io/OutputStream;I)V

    .line 422
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 440
    .end local v0           #bytes:[B
    :goto_0
    :sswitch_1
    return-void

    .line 428
    .restart local p2
    :sswitch_2
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlSerializer;->buf:Ljava/io/ByteArrayOutputStream;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, v1, p2}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrI(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .restart local p2
    :sswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2, v2}, Lorg/kxml2/wap/WbxmlSerializer;->writeStrT(Ljava/lang/String;Z)V

    goto :goto_0

    .line 413
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0xc0 -> :sswitch_1
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_0
    .end sparse-switch
.end method
