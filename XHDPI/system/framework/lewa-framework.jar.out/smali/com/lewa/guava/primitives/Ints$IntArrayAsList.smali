.class Lcom/lewa/guava/primitives/Ints$IntArrayAsList;
.super Ljava/util/AbstractList;
.source "Ints.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/primitives/Ints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[I

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .locals 2
    .parameter "array"

    .prologue
    .line 491
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;-><init>([III)V

    .line 492
    return-void
.end method

.method constructor <init>([III)V
    .locals 0
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    .line 496
    iput p2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    .line 497
    iput p3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    .line 498
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "target"

    .prologue
    .line 515
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    iget v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    #calls: Lcom/lewa/guava/primitives/Ints;->indexOf([IIII)I
    invoke-static {v0, v1, v2, v3}, Lcom/lewa/guava/primitives/Ints;->access$000([IIII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 559
    if-ne p1, p0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v3

    .line 562
    :cond_1
    instance-of v5, p1, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 563
    check-cast v2, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;

    .line 564
    .local v2, that:Lcom/lewa/guava/primitives/Ints$IntArrayAsList;
    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 565
    .local v1, size:I
    invoke-virtual {v2}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    .line 566
    goto :goto_0

    .line 568
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 569
    iget-object v5, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v6, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v6, v0

    aget v5, v5, v6

    iget-object v6, v2, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v7, v2, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v7, v0

    aget v6, v6, v7

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 570
    goto :goto_0

    .line 568
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 575
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #that:Lcom/lewa/guava/primitives/Ints$IntArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 2
    .parameter "index"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 510
    iget-object v0, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->get(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 579
    const/4 v1, 0x1

    .line 580
    .local v1, result:I
    iget v0, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 581
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/lewa/guava/primitives/Ints;->hashCode(I)I

    move-result v3

    add-int v1, v2, v3

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 521
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    #calls: Lcom/lewa/guava/primitives/Ints;->indexOf([IIII)I
    invoke-static {v1, v2, v3, v4}, Lcom/lewa/guava/primitives/Ints;->access$000([IIII)I

    move-result v0

    .line 523
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 524
    iget v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 527
    .end local v0           #i:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .parameter "target"

    .prologue
    .line 532
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    iget v4, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    #calls: Lcom/lewa/guava/primitives/Ints;->lastIndexOf([IIII)I
    invoke-static {v1, v2, v3, v4}, Lcom/lewa/guava/primitives/Ints;->access$100([IIII)I

    move-result v0

    .line 534
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 535
    iget v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 538
    .end local v0           #i:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
    .parameter "index"
    .parameter "element"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 543
    iget-object v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    aget v0, v1, v2

    .line 544
    .local v0, oldValue:I
    iget-object v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 501
    iget v0, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    iget v1, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v0

    .line 551
    .local v0, size:I
    invoke-static {p1, p2, v0}, Lcom/lewa/guava/base/Preconditions;->checkPositionIndexes(III)V

    .line 552
    if-ne p1, p2, :cond_0

    .line 553
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 555
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;

    iget-object v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;-><init>([III)V

    goto :goto_0
.end method

.method toIntArray()[I
    .locals 5

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v1

    .line 598
    .local v1, size:I
    new-array v0, v1, [I

    .line 599
    .local v0, result:[I
    iget-object v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 588
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    iget v4, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 590
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lewa/guava/primitives/Ints$IntArrayAsList;->array:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
