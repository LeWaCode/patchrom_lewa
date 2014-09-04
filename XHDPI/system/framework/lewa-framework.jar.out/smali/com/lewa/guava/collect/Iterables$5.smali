.class final Lcom/lewa/guava/collect/Iterables$5;
.super Lcom/lewa/guava/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterables;->partition(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Iterables$IterableWithToString",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterables$5;->val$iterable:Ljava/lang/Iterable;

    iput p2, p0, Lcom/lewa/guava/collect/Iterables$5;->val$size:I

    invoke-direct {p0}, Lcom/lewa/guava/collect/Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lewa/guava/collect/Iterables$5;->val$iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lcom/lewa/guava/collect/Iterables$5;->val$size:I

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Iterators;->partition(Ljava/util/Iterator;I)Lcom/lewa/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
