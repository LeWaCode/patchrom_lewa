.class public final Lcom/qq/taf/jce/JceDisplayer;
.super Ljava/lang/Object;
.source "JceDisplayer.java"


# instance fields
.field private _level:I

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    .line 34
    iput-object p1, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "sb"
    .parameter "level"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    .line 28
    iput-object p1, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    .line 29
    iput p2, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    .line 30
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .local v0, sb:Ljava/lang/StringBuilder;
    const-wide v1, 0x3ff3333333333333L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 372
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private ps(Ljava/lang/String;)V
    .locals 3
    .parameter "fieldName"

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    if-ge v0, v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_1
    return-void
.end method


# virtual methods
.method public display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    return-object p0
.end method

.method public display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 53
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    return-object p0
.end method

.method public display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 88
    invoke-direct {p0, p3}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    return-object p0
.end method

.method public display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 81
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    return-object p0
.end method

.method public display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    return-object p0
.end method

.method public display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 74
    invoke-direct {p0, p3}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    return-object p0
.end method

.method public display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "v"
    .parameter "fieldName"

    .prologue
    .line 357
    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_0
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 365
    return-object p0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceStruct;->display(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method

.method public display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, o:Ljava/lang/Object;,"TT;"
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .end local p1           #o:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object p0

    .line 311
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 312
    check-cast p1, Ljava/lang/Byte;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 313
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 314
    check-cast p1, Ljava/lang/Boolean;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 315
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 316
    check-cast p1, Ljava/lang/Short;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 317
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 318
    check-cast p1, Ljava/lang/Integer;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 319
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 320
    check-cast p1, Ljava/lang/Long;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 321
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 322
    check-cast p1, Ljava/lang/Float;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 323
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 324
    check-cast p1, Ljava/lang/Double;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 325
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 326
    check-cast p1, Ljava/lang/String;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 327
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 328
    check-cast p1, Ljava/util/Map;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 329
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    .line 330
    check-cast p1, Ljava/util/List;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    .line 331
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_a
    instance-of v0, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_b

    .line 332
    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 333
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    .line 334
    check-cast p1, [B

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 335
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    .line 336
    check-cast p1, [Z

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 337
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    .line 338
    check-cast p1, [S

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 339
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    .line 340
    check-cast p1, [I

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 341
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    .line 342
    check-cast p1, [J

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 343
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    .line 344
    check-cast p1, [F

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 345
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    .line 346
    check-cast p1, [D

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 347
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 348
    check-cast p1, [Ljava/lang/Object;

    .end local p1           #o:Ljava/lang/Object;,"TT;"
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    .line 350
    .restart local p1       #o:Ljava/lang/Object;,"TT;"
    :cond_13
    new-instance v0, Lcom/qq/taf/jce/JceEncodeException;

    const-string v1, "write object error: unsupport type."

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceEncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 3
    .parameter "s"
    .parameter "fieldName"

    .prologue
    const/16 v2, 0xa

    .line 95
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 96
    if-nez p1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, v:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_0

    .line 284
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    move-result-object p0

    goto :goto_0
.end method

.method public display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 8
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    .prologue
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 240
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 241
    if-nez p1, :cond_0

    .line 242
    iget-object v4, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :goto_0
    return-object p0

    .line 245
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", {}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    new-instance v3, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v4, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 251
    .local v3, jd1:Lcom/qq/taf/jce/JceDisplayer;
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v4, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 252
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 253
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    const/16 v4, 0x28

    invoke-virtual {v3, v4, v6}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 256
    const/16 v4, 0x29

    invoke-virtual {v3, v4, v6}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_1

    .line 258
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v6}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "n"
    .parameter "fieldName"

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    return-object p0
.end method

.method public display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .parameter "b"
    .parameter "fieldName"

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v0, 0x54

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    return-object p0

    .line 40
    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 107
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 108
    if-nez p1, :cond_0

    .line 109
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :goto_0
    return-object p0

    .line 112
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 113
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 118
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-byte v4, v0, v1

    .line 119
    .local v4, o:B
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    .end local v4           #o:B
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 126
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :goto_0
    return-object p0

    .line 131
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 137
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-char v4, v0, v1

    .line 138
    .local v4, o:C
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v4           #o:C
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 10
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    .line 221
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 222
    if-nez p1, :cond_0

    .line 223
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :goto_0
    return-object p0

    .line 226
    :cond_0
    array-length v6, p1

    if-nez v6, :cond_1

    .line 227
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", []"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v2, v6, v7}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 232
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[D
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-wide v4, v0, v1

    .line 233
    .local v4, o:D
    invoke-virtual {v2, v4, v5, v9}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v4           #o:D
    :cond_2
    const/16 v6, 0x5d

    invoke-virtual {p0, v6, v9}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 202
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 203
    if-nez p1, :cond_0

    .line 204
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    :goto_0
    return-object p0

    .line 207
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 213
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[F
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, v0, v1

    .line 214
    .local v4, o:F
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v4           #o:F
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 164
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 165
    if-nez p1, :cond_0

    .line 166
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :goto_0
    return-object p0

    .line 169
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 170
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 175
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget v4, v0, v1

    .line 176
    .local v4, o:I
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 177
    .end local v4           #o:I
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 10
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    .line 183
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :goto_0
    return-object p0

    .line 188
    :cond_0
    array-length v6, p1

    if-nez v6, :cond_1

    .line 189
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", []"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    :cond_1
    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v6, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v2, v6, v7}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 194
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[J
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-wide v4, v0, v1

    .line 195
    .local v4, o:J
    invoke-virtual {v2, v4, v5, v9}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    .end local v4           #o:J
    :cond_2
    const/16 v6, 0x5d

    invoke-virtual {p0, v6, v9}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    .prologue
    .local p1, v:[Ljava/lang/Object;,"[TT;"
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 264
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    :goto_0
    return-object p0

    .line 269
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 270
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 275
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 276
    .local v4, o:Ljava/lang/Object;,"TT;"
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v4           #o:Ljava/lang/Object;,"TT;"
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 9
    .parameter "v"
    .parameter "fieldName"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 145
    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    :goto_0
    return-object p0

    .line 150
    :cond_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 151
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", []"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v5, p0, Lcom/qq/taf/jce/JceDisplayer;->sb:Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qq/taf/jce/JceDisplayer;->_level:I

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v2, v5, v6}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 156
    .local v2, jd:Lcom/qq/taf/jce/JceDisplayer;
    move-object v0, p1

    .local v0, arr$:[S
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-short v4, v0, v1

    .line 157
    .local v4, o:S
    invoke-virtual {v2, v4, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v4           #o:S
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {p0, v5, v8}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method
