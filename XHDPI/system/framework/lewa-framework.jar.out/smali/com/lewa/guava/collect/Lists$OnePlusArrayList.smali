.class Lcom/lewa/guava/collect/Lists$OnePlusArrayList;
.super Ljava/util/AbstractList;
.source "Lists.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnePlusArrayList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final rest:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[TE;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/lewa/guava/collect/Lists$OnePlusArrayList;,"Lcom/lewa/guava/collect/Lists$OnePlusArrayList<TE;>;"
    .local p1, first:Ljava/lang/Object;,"TE;"
    .local p2, rest:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->first:Ljava/lang/Object;

    .line 277
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    .line 278
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, this:Lcom/lewa/guava/collect/Lists$OnePlusArrayList;,"Lcom/lewa/guava/collect/Lists$OnePlusArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lewa/guava/base/Preconditions;->checkElementIndex(II)I

    .line 285
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->first:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 280
    .local p0, this:Lcom/lewa/guava/collect/Lists$OnePlusArrayList;,"Lcom/lewa/guava/collect/Lists$OnePlusArrayList<TE;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
