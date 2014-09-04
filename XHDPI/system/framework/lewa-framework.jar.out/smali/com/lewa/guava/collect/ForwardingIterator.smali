.class public abstract Lcom/lewa/guava/collect/ForwardingIterator;
.super Lcom/lewa/guava/collect/ForwardingObject;
.source "ForwardingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ForwardingObject;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    .local p0, this:Lcom/lewa/guava/collect/ForwardingIterator;,"Lcom/lewa/guava/collect/ForwardingIterator<TT;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/ForwardingIterator;,"Lcom/lewa/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lcom/lewa/guava/collect/ForwardingIterator;,"Lcom/lewa/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Lcom/lewa/guava/collect/ForwardingIterator;,"Lcom/lewa/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lcom/lewa/guava/collect/ForwardingIterator;,"Lcom/lewa/guava/collect/ForwardingIterator<TT;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingIterator;->delegate()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 81
    return-void
.end method
