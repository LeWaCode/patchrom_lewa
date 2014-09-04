.class final Lcom/lewa/guava/collect/Iterators$7;
.super Lcom/lewa/guava/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/lewa/guava/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/lewa/guava/base/Predicate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/lewa/guava/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/lewa/guava/collect/Iterators$7;->val$predicate:Lcom/lewa/guava/base/Predicate;

    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 635
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$7;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 637
    .local v0, element:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Iterators$7;->val$predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v1, v0}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    .end local v0           #element:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Iterators$7;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
