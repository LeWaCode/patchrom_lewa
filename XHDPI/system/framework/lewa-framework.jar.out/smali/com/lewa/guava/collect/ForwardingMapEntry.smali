.class public abstract Lcom/lewa/guava/collect/ForwardingMapEntry;
.super Lcom/lewa/guava/collect/ForwardingObject;
.source "ForwardingMapEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ForwardingObject;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
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
    .line 86
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/lewa/guava/collect/ForwardingMapEntry;,"Lcom/lewa/guava/collect/ForwardingMapEntry<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
