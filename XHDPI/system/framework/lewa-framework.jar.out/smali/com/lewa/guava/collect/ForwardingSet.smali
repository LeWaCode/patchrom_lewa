.class public abstract Lcom/lewa/guava/collect/ForwardingSet;
.super Lcom/lewa/guava/collect/ForwardingCollection;
.source "ForwardingSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ForwardingCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    .local p0, this:Lcom/lewa/guava/collect/ForwardingSet;,"Lcom/lewa/guava/collect/ForwardingSet<TE;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ForwardingSet;,"Lcom/lewa/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ForwardingSet;,"Lcom/lewa/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 74
    .local p0, this:Lcom/lewa/guava/collect/ForwardingSet;,"Lcom/lewa/guava/collect/ForwardingSet<TE;>;"
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    .local p0, this:Lcom/lewa/guava/collect/ForwardingSet;,"Lcom/lewa/guava/collect/ForwardingSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
