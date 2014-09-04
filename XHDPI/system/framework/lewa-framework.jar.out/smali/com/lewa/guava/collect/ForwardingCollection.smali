.class public abstract Lcom/lewa/guava/collect/ForwardingCollection;
.super Lcom/lewa/guava/collect/ForwardingObject;
.source "ForwardingCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ForwardingObject;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 121
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 122
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 89
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 105
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/lewa/guava/collect/ForwardingCollection;,"Lcom/lewa/guava/collect/ForwardingCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
