.class final Lcom/lewa/guava/collect/Iterables$11;
.super Lcom/lewa/guava/collect/Iterables$IterableWithToString;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterables;->reverse(Ljava/util/List;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Iterables$IterableWithToString",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterables$11;->val$list:Ljava/util/List;

    invoke-direct {p0}, Lcom/lewa/guava/collect/Iterables$IterableWithToString;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 725
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterables$11;->val$list:Ljava/util/List;

    iget-object v2, p0, Lcom/lewa/guava/collect/Iterables$11;->val$list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 726
    .local v0, listIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TT;>;"
    new-instance v1, Lcom/lewa/guava/collect/Iterables$11$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Iterables$11$1;-><init>(Lcom/lewa/guava/collect/Iterables$11;Ljava/util/ListIterator;)V

    return-object v1
.end method
