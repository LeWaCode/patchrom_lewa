.class final Lcom/lewa/guava/collect/Iterators$10;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field i:I

.field final length:I

.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterators$10;->val$array:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    .line 859
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$10;->val$array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/lewa/guava/collect/Iterators$10;->length:I

    .line 860
    const/4 v0, 0x0

    iput v0, p0, Lcom/lewa/guava/collect/Iterators$10;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 862
    iget v0, p0, Lcom/lewa/guava/collect/Iterators$10;->i:I

    iget v1, p0, Lcom/lewa/guava/collect/Iterators$10;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 865
    iget v0, p0, Lcom/lewa/guava/collect/Iterators$10;->i:I

    iget v1, p0, Lcom/lewa/guava/collect/Iterators$10;->length:I

    if-ge v0, v1, :cond_0

    .line 866
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterators$10;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/lewa/guava/collect/Iterators$10;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lewa/guava/collect/Iterators$10;->i:I

    aget-object v0, v0, v1

    return-object v0

    .line 868
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
