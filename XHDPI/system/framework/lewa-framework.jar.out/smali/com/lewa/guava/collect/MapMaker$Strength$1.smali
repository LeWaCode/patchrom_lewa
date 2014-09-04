.class final enum Lcom/lewa/guava/collect/MapMaker$Strength$1;
.super Lcom/lewa/guava/collect/MapMaker$Strength;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lewa/guava/collect/MapMaker$Strength;-><init>(Ljava/lang/String;ILcom/lewa/guava/collect/MapMaker$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, original:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, newNext:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    move-object v0, p2

    check-cast v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;

    .line 396
    .local v0, from:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    if-nez p3, :cond_0

    new-instance v1, Lcom/lewa/guava/collect/MapMaker$WeakEntry;

    iget-object v2, v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    iget v3, v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->hash:I

    invoke-direct {v1, v2, p1, v3}, Lcom/lewa/guava/collect/MapMaker$WeakEntry;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/lewa/guava/collect/MapMaker$LinkedWeakEntry;

    iget-object v2, v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    iget v3, v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->hash:I

    invoke-direct {v1, v2, p1, v3, p3}, Lcom/lewa/guava/collect/MapMaker$LinkedWeakEntry;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 376
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 379
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method newEntry(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    if-nez p4, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$WeakEntry;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$LinkedWeakEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lewa/guava/collect/MapMaker$LinkedWeakEntry;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    goto :goto_0
.end method

.method referenceValue(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$WeakValueReference;

    invoke-direct {v0, p2, p1}, Lcom/lewa/guava/collect/MapMaker$WeakValueReference;-><init>(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method
