.class public Lorg/kxml2/wap/WbxmlParser;
.super Ljava/lang/Object;
.source "WbxmlParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field static final HEX_DIGITS:Ljava/lang/String; = "0123456789abcdef"

.field private static final ILLEGAL_TYPE:Ljava/lang/String; = "Wrong event type"

.field private static final UNEXPECTED_EOF:Ljava/lang/String; = "Unexpected EOF"

.field public static final WAP_EXTENSION:I = 0x40


# instance fields
.field private ATTR_START_TABLE:I

.field private ATTR_VALUE_TABLE:I

.field private TAG_TABLE:I

.field private attrStartTable:[Ljava/lang/String;

.field private attrValueTable:[Ljava/lang/String;

.field private attributeCount:I

.field private attributes:[Ljava/lang/String;

.field private cacheStringTable:Ljava/util/Hashtable;

.field private degenerated:Z

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private isWhitespace:Z

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private nextId:I

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private processNsp:Z

.field private publicIdentifierId:I

.field private stringTable:[B

.field private tables:Ljava/util/Vector;

.field private tagTable:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I

.field private version:I

.field private wapCode:I

.field private wapExtensionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 97
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 98
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 102
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 103
    const/4 v0, -0x2

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    return-void
.end method

.method private final adjustNsp()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v14, 0x3a

    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 524
    const/4 v0, 0x0

    .line 526
    .local v0, any:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_4

    .line 529
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 530
    .local v1, attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 533
    .local v4, cut:I
    if-eq v4, v12, :cond_1

    .line 534
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, prefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    :goto_1
    const-string v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 545
    const/4 v0, 0x1

    .line 526
    .end local v7           #prefix:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 537
    :cond_1
    const-string v8, "xmlns"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 538
    move-object v7, v1

    .line 539
    .restart local v7       #prefix:Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_1

    .line 548
    :cond_2
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v9, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    aget v10, v8, v9

    add-int/lit8 v11, v10, 0x1

    aput v11, v8, v9

    shl-int/lit8 v6, v10, 0x1

    .line 550
    .local v6, j:I
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    invoke-direct {p0, v8, v9}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    .line 551
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aput-object v1, v8, v6

    .line 552
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x3

    aget-object v10, v10, v11

    aput-object v10, v8, v9

    .line 554
    if-eqz v1, :cond_3

    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x3

    aget-object v8, v8, v9

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 556
    const-string v8, "illegal empty namespace"

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 562
    :cond_3
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x4

    iget-object v10, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    iget v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v11, v11, 0x2

    sub-int/2addr v11, v5

    invoke-static {v8, v9, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    add-int/lit8 v5, v5, -0x4

    goto :goto_2

    .line 573
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    .end local v6           #j:I
    .end local v7           #prefix:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_9

    .line 574
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v5, v8, -0x4

    .line 575
    :goto_3
    if-ltz v5, :cond_9

    .line 578
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aget-object v1, v8, v9

    .line 579
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 581
    .restart local v4       #cut:I
    if-nez v4, :cond_5

    .line 582
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal attribute name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 588
    :cond_5
    if-eq v4, v12, :cond_8

    .line 589
    invoke-virtual {v1, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, attrPrefix:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, attrNs:Ljava/lang/String;
    if-nez v2, :cond_6

    .line 597
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Prefix: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 603
    :cond_6
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aput-object v2, v8, v5

    .line 604
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x1

    aput-object v3, v8, v9

    .line 605
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v5, 0x2

    aput-object v1, v8, v9

    .line 607
    iget v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v6, v8, -0x4

    .line 608
    .restart local v6       #j:I
    :goto_4
    if-le v6, v5, :cond_8

    .line 610
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v9, v6, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicate Attribute: {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 609
    :cond_7
    add-int/lit8 v6, v6, -0x4

    goto :goto_4

    .line 576
    .end local v2           #attrNs:Ljava/lang/String;
    .end local v3           #attrPrefix:Ljava/lang/String;
    .end local v6           #j:I
    :cond_8
    add-int/lit8 v5, v5, -0x4

    goto/16 :goto_3

    .line 621
    .end local v1           #attrName:Ljava/lang/String;
    .end local v4           #cut:I
    :cond_9
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 623
    .restart local v4       #cut:I
    if-nez v4, :cond_d

    .line 624
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal tag name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 630
    :cond_a
    :goto_5
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 632
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    if-nez v8, :cond_c

    .line 633
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 634
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "undefined prefix: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 635
    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 638
    :cond_c
    return v0

    .line 625
    :cond_d
    if-eq v4, v12, :cond_a

    .line 626
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v8, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 627
    iget-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_5
.end method

.method private final ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "arr"
    .parameter "required"

    .prologue
    const/4 v2, 0x0

    .line 987
    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 991
    .end local p1
    :goto_0
    return-object p1

    .line 989
    .restart local p1
    :cond_0
    add-int/lit8 v1, p2, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .line 990
    .local v0, bigger:[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 991
    goto :goto_0
.end method

.method private final exception(Ljava/lang/String;)V
    .locals 2
    .parameter "desc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final nextImpl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 680
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v3, v4, :cond_0

    .line 681
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    .line 684
    :cond_0
    iget-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v3, :cond_1

    .line 685
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 686
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 768
    :goto_0
    return-void

    .line 690
    :cond_1
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 691
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 692
    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    .line 695
    .local v1, id:I
    :goto_1
    if-nez v1, :cond_2

    .line 696
    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 697
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    invoke-direct {p0, v3, v7}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 698
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v1

    goto :goto_1

    .line 700
    :cond_2
    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 702
    sparse-switch v1, :sswitch_data_0

    .line 762
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseElement(I)V

    goto :goto_0

    .line 704
    :sswitch_0
    iput v7, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    goto :goto_0

    .line 709
    :sswitch_1
    iget v3, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v3, 0x2

    .line 711
    .local v2, sp:I
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 712
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    .line 713
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    .line 714
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 720
    .end local v2           #sp:I
    :sswitch_2
    const/4 v3, 0x6

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 721
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v3

    int-to-char v0, v3

    .line 722
    .local v0, c:C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    goto :goto_0

    .line 729
    .end local v0           #c:C
    :sswitch_3
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 730
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 744
    :sswitch_4
    const/16 v3, 0x40

    iput v3, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 745
    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 746
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    goto/16 :goto_0

    .line 750
    :sswitch_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PI curr. not supp."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 756
    :sswitch_6
    iput v8, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 757
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_4
        0x42 -> :sswitch_4
        0x43 -> :sswitch_5
        0x80 -> :sswitch_4
        0x81 -> :sswitch_4
        0x82 -> :sswitch_4
        0x83 -> :sswitch_6
        0xc0 -> :sswitch_4
        0xc1 -> :sswitch_4
        0xc2 -> :sswitch_4
        0xc3 -> :sswitch_4
    .end sparse-switch
.end method

.method private peekId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 894
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    .line 896
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->nextId:I

    return v0
.end method

.method private selectPage(IZ)V
    .locals 3
    .parameter "nr"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Code Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undefined!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 667
    :cond_1
    if-eqz p2, :cond_2

    .line 668
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    goto :goto_0
.end method

.method private final setTable(II[Ljava/lang/String;)V
    .locals 2
    .parameter "page"
    .parameter "type"
    .parameter "table"

    .prologue
    .line 642
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setXxxTable must be called before setInput!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    .line 646
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->tables:Ljava/util/Vector;

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    invoke-virtual {v0, p3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 649
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "entity"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 318
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 320
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 312
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 324
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 304
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 330
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    if-lt p1, v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 339
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 340
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 342
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x3

    aget-object v1, v1, v2

    .line 348
    :goto_1
    return-object v1

    .line 341
    :cond_1
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 348
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 352
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter "feature"

    .prologue
    .line 128
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    .line 168
    const-string v1, "xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    .line 183
    :goto_0
    return-object v1

    .line 170
    :cond_0
    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    const-string v1, "http://www.w3.org/2000/xmlns/"

    goto :goto_0

    .line 173
    :cond_1
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getNamespaceCount(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x2

    .line 174
    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 176
    if-nez p1, :cond_2

    .line 177
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 178
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_0

    .line 175
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 183
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespaceCount(I)I
    .locals 1
    .parameter "depth"

    .prologue
    .line 153
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    if-le p1, v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspStack:[Ljava/lang/String;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x3

    .line 192
    new-instance v0, Ljava/lang/StringBuffer;

    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    sget-object v5, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_5

    sget-object v4, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    aget-object v4, v4, v5

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_8

    .line 198
    :cond_0
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    if-eqz v4, :cond_1

    .line 199
    const-string v4, "(empty) "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne v4, v6, :cond_2

    .line 202
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    :cond_2
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_3
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    shl-int/lit8 v1, v4, 0x2

    .line 209
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 210
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_4

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 192
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_5
    const-string v4, "unknown"

    goto/16 :goto_0

    .line 228
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v1       #cnt:I
    .restart local v2       #i:I
    :cond_6
    const/16 v4, 0x3e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    .end local v1           #cnt:I
    .end local v2           #i:I
    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 230
    :cond_8
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    .line 231
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 232
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 233
    :cond_9
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v4, :cond_a

    .line 234
    const-string v4, "(whitespace)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 236
    :cond_a
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "property"

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 6
    .parameter "poslen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 267
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 268
    aput v3, p1, v3

    .line 269
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, p1, v5

    .line 270
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 271
    .local v0, buf:[C
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 277
    .end local v0           #buf:[C
    :goto_0
    return-object v0

    .line 275
    :cond_0
    aput v4, p1, v3

    .line 276
    aput v4, p1, v5

    .line 277
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWapCode()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    return v0
.end method

.method public getWapExtensionData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->wapExtensionData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 294
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 295
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    return v0
.end method

.method public isWhitespace()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 255
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 258
    const-string v0, "Wrong event type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    return v0
.end method

.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 361
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 362
    const/16 v0, 0x270f

    .line 366
    .local v0, minType:I
    :cond_0
    :sswitch_0
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 368
    .local v1, save:Ljava/lang/String;
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 370
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ge v2, v0, :cond_1

    .line 371
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 373
    :cond_1
    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 375
    if-lt v0, v4, :cond_3

    .line 377
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    if-nez v2, :cond_5

    .end local v1           #save:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    .line 379
    :cond_2
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->peekId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 393
    :cond_3
    iput v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 395
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-le v2, v4, :cond_4

    .line 396
    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 398
    :cond_4
    iget v2, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v2

    .line 377
    .restart local v1       #save:Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x44 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0xc4 -> :sswitch_0
    .end sparse-switch
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 414
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 417
    :cond_0
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 418
    const-string v0, "unexpected type"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 426
    const-string v1, "precondition: START_TAG"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 432
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 433
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->next()I

    .line 439
    :goto_0
    iget v1, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 440
    const-string v1, "END_TAG expected"

    invoke-direct {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 442
    :cond_1
    return-object v0

    .line 437
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 405
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->nextImpl()V

    .line 406
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    return v0
.end method

.method parseElement(I)V
    .locals 8
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 938
    const/4 v4, 0x2

    iput v4, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    .line 939
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->tagTable:[Ljava/lang/String;

    and-int/lit8 v6, p1, 0x3f

    invoke-virtual {p0, v4, v6}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    .line 941
    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    .line 942
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_0

    .line 943
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readAttr()V

    .line 946
    :cond_0
    and-int/lit8 v4, p1, 0x40

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->degenerated:Z

    .line 948
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    shl-int/lit8 v3, v4, 0x2

    .line 952
    .local v3, sp:I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    invoke-direct {p0, v4, v6}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    .line 953
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    iget-object v7, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 955
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    if-lt v4, v6, :cond_1

    .line 956
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v4, v4, 0x4

    new-array v0, v4, [I

    .line 957
    .local v0, bigger:[I
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    array-length v6, v6

    invoke-static {v4, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 958
    iput-object v0, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    .line 961
    .end local v0           #bigger:[I
    :cond_1
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->nspCounts:[I

    iget v7, p0, Lorg/kxml2/wap/WbxmlParser;->depth:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 963
    iget v4, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_5

    .line 964
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 965
    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate Attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/kxml2/wap/WbxmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 964
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #sp:I
    :cond_3
    move v4, v5

    .line 946
    goto :goto_0

    .line 963
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #sp:I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 973
    .end local v2           #j:I
    :cond_5
    iget-boolean v4, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    if-eqz v4, :cond_6

    .line 974
    invoke-direct {p0}, Lorg/kxml2/wap/WbxmlParser;->adjustNsp()Z

    .line 978
    :goto_3
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    aput-object v5, v4, v3

    .line 979
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->prefix:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 980
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->elementStack:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 982
    return-void

    .line 976
    :cond_6
    const-string v4, ""

    iput-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->namespace:Ljava/lang/String;

    goto :goto_3
.end method

.method public parseWapExtension(I)Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 774
    sparse-switch p1, :sswitch_data_0

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 805
    :cond_0
    :goto_0
    :sswitch_0
    return-object v0

    .line 778
    :sswitch_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 783
    :sswitch_2
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 792
    :sswitch_3
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v1

    .line 793
    .local v1, count:I
    new-array v0, v1, [B

    .line 795
    .local v0, buf:[B
    :goto_1
    if-lez v1, :cond_0

    .line 796
    iget-object v2, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 774
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_1
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method public readAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 811
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 812
    .local v3, id:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .line 814
    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/4 v6, 0x1

    if-eq v3, v6, :cond_5

    .line 816
    :goto_1
    if-nez v3, :cond_0

    .line 817
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 818
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_1

    .line 821
    :cond_0
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 824
    .local v4, name:Ljava/lang/String;
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 826
    .local v0, cut:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 827
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 834
    .local v5, value:Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    .line 841
    :goto_3
    if-gt v3, v9, :cond_2

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/16 v6, 0x83

    if-eq v3, v6, :cond_2

    const/16 v6, 0x40

    if-lt v3, v6, :cond_1

    const/16 v6, 0x42

    if-le v3, v6, :cond_2

    :cond_1
    if-lt v3, v9, :cond_4

    const/16 v6, 0x82

    if-gt v3, v6, :cond_4

    .line 843
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 874
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, Lorg/kxml2/wap/WbxmlParser;->resolveId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    :goto_4
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v3

    goto :goto_3

    .line 829
    .end local v5           #value:Ljava/lang/StringBuffer;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 831
    .restart local v5       #value:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 845
    :sswitch_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v6

    invoke-direct {p0, v6, v8}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_4

    .line 849
    :sswitch_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 853
    :sswitch_2
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 866
    :sswitch_3
    invoke-virtual {p0, v3}, Lorg/kxml2/wap/WbxmlParser;->parseWapExtension(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lorg/kxml2/wap/WbxmlParser;->resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 870
    :sswitch_4
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 881
    :cond_4
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x4

    invoke-direct {p0, v6, v7}, Lorg/kxml2/wap/WbxmlParser;->ensureCapacity([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    .line 883
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const-string v7, ""

    aput-object v7, v6, v2

    .line 884
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 885
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v4, v6, v2

    .line 886
    iget-object v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributes:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 888
    iget v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/kxml2/wap/WbxmlParser;->attributeCount:I

    goto/16 :goto_0

    .line 890
    .end local v0           #cut:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/StringBuffer;
    :cond_5
    return-void

    .line 843
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_3
        0x42 -> :sswitch_3
        0x80 -> :sswitch_3
        0x81 -> :sswitch_3
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    iget-object v1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 996
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 997
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 998
    :cond_0
    return v0
.end method

.method readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    const/4 v1, 0x0

    .line 1006
    .local v1, result:I
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v0

    .line 1007
    .local v0, i:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 1009
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 1011
    return v1
.end method

.method readStrI()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1016
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 1018
    .local v3, wsp:Z
    :goto_0
    iget-object v4, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1019
    .local v1, i:I
    if-nez v1, :cond_0

    .line 1030
    iput-boolean v3, p0, Lorg/kxml2/wap/WbxmlParser;->isWhitespace:Z

    .line 1031
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1032
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1033
    return-object v2

    .line 1022
    .end local v2           #result:Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 1023
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1025
    :cond_1
    const/16 v4, 0x20

    if-le v1, v4, :cond_2

    .line 1026
    const/4 v3, 0x0

    .line 1028
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method readStrT()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1037
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v2

    .line 1041
    .local v2, pos:I
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 1043
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    .line 1045
    :cond_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1046
    .local v1, forReturn:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1048
    move v0, v2

    .line 1049
    .local v0, end:I
    :goto_0
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 1050
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1052
    :cond_1
    new-instance v1, Ljava/lang/String;

    .end local v1           #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v4, v0, v2

    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1053
    .restart local v1       #forReturn:Ljava/lang/String;
    iget-object v3, p0, Lorg/kxml2/wap/WbxmlParser;->cacheStringTable:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .end local v0           #end:I
    :cond_2
    return-object v1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "namespace"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->type:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    const-string v0, "WAP Ext."

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 454
    :cond_2
    return-void

    .line 452
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/kxml2/wap/WbxmlParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method resolveId([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "tab"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 919
    and-int/lit8 v1, p2, 0x7f

    add-int/lit8 v0, v1, -0x5

    .line 920
    .local v0, idx:I
    if-ne v0, v2, :cond_0

    .line 921
    iput v2, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 922
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readStrT()Ljava/lang/String;

    move-result-object v1

    .line 932
    :goto_0
    return-object v1

    .line 924
    :cond_0
    if-ltz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    .line 928
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " undef."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_2
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lorg/kxml2/wap/WbxmlParser;->wapCode:I

    .line 932
    aget-object v1, p1, v0

    goto :goto_0
.end method

.method protected resolveWapExtension(ILjava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    .line 904
    instance-of v3, p2, [B

    if-eqz v3, :cond_1

    .line 905
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 906
    .local v2, sb:Ljava/lang/StringBuffer;
    check-cast p2, [B

    .end local p2
    move-object v0, p2

    check-cast v0, [B

    .line 908
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 909
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 910
    const-string v3, "0123456789abcdef"

    aget-byte v4, v0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 908
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    .end local v0           #b:[B
    .end local v1           #i:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    .restart local p2
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public setAttrStartTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1082
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_START_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1083
    return-void
.end method

.method public setAttrValueTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1094
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->ATTR_VALUE_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .parameter "feature"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 508
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iput-boolean p2, p0, Lorg/kxml2/wap/WbxmlParser;->processNsp:Z

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "in"
    .parameter "enc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 464
    iput-object p1, p0, Lorg/kxml2/wap/WbxmlParser;->in:Ljava/io/InputStream;

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readByte()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->version:I

    .line 468
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v5

    iput v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    .line 470
    iget v5, p0, Lorg/kxml2/wap/WbxmlParser;->publicIdentifierId:I

    if-nez v5, :cond_0

    .line 471
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    .line 473
    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v0

    .line 475
    .local v0, charset:I
    if-nez p2, :cond_2

    .line 476
    sparse-switch v0, :sswitch_data_0

    .line 482
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v0           #charset:I
    :catch_0
    move-exception v2

    .line 502
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Illegal input format"

    invoke-direct {p0, v5}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 504
    .end local v2           #e:Ljava/io/IOException;
    :goto_0
    return-void

    .line 477
    .restart local v0       #charset:I
    :sswitch_0
    :try_start_1
    const-string v5, "ISO-8859-1"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    .line 488
    :goto_1
    invoke-virtual {p0}, Lorg/kxml2/wap/WbxmlParser;->readInt()I

    move-result v4

    .line 489
    .local v4, strTabSize:I
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    .line 491
    const/4 v3, 0x0

    .line 492
    .local v3, ok:I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 493
    iget-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->stringTable:[B

    sub-int v6, v4, v3

    invoke-virtual {p1, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 494
    .local v1, cnt:I
    if-gtz v1, :cond_3

    .line 498
    .end local v1           #cnt:I
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    .line 499
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/kxml2/wap/WbxmlParser;->selectPage(IZ)V

    goto :goto_0

    .line 478
    .end local v3           #ok:I
    .end local v4           #strTabSize:I
    :sswitch_1
    const-string v5, "UTF-8"

    iput-object v5, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;

    goto :goto_1

    .line 485
    :cond_2
    iput-object p2, p0, Lorg/kxml2/wap/WbxmlParser;->encoding:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 495
    .restart local v1       #cnt:I
    .restart local v3       #ok:I
    .restart local v4       #strTabSize:I
    :cond_3
    add-int/2addr v3, v1

    .line 496
    goto :goto_2

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6a -> :sswitch_1
    .end sparse-switch
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 458
    const-string v0, "InputStream required"

    invoke-direct {p0, v0}, Lorg/kxml2/wap/WbxmlParser;->exception(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "property"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagTable(I[Ljava/lang/String;)V
    .locals 1
    .parameter "page"
    .parameter "table"

    .prologue
    .line 1064
    iget v0, p0, Lorg/kxml2/wap/WbxmlParser;->TAG_TABLE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/kxml2/wap/WbxmlParser;->setTable(II[Ljava/lang/String;)V

    .line 1069
    return-void
.end method
