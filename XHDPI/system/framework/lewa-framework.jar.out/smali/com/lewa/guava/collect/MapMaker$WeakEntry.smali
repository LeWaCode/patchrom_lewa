.class Lcom/lewa/guava/collect/MapMaker$WeakEntry;
.super Lcom/lewa/guava/base/FinalizableWeakReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/base/FinalizableWeakReference",
        "<TK;>;",
        "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "hash"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I)V"
        }
    .end annotation

    .prologue
    .line 1028
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    .local p1, internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$QueueHolder;->queue:Lcom/lewa/guava/base/FinalizableReferenceQueue;

    invoke-direct {p0, p2, v0}, Lcom/lewa/guava/base/FinalizableWeakReference;-><init>(Ljava/lang/Object;Lcom/lewa/guava/base/FinalizableReferenceQueue;)V

    .line 1045
    #calls: Lcom/lewa/guava/collect/MapMaker;->computing()Lcom/lewa/guava/collect/MapMaker$ValueReference;
    invoke-static {}, Lcom/lewa/guava/collect/MapMaker;->access$600()Lcom/lewa/guava/collect/MapMaker$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    .line 1029
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    .line 1030
    iput p3, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->hash:I

    .line 1031
    return-void
.end method


# virtual methods
.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1038
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    invoke-interface {v0, p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    .line 1039
    return-void
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1061
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    iget v0, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->hash:I

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
    .line 1034
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1058
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueReference()Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1048
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method public setValueReference(Lcom/lewa/guava/collect/MapMaker$ValueReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    .local p1, valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;,"Lcom/lewa/guava/collect/MapMaker$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->valueReference:Lcom/lewa/guava/collect/MapMaker$ValueReference;

    .line 1053
    return-void
.end method

.method public valueReclaimed()V
    .locals 2

    .prologue
    .line 1055
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$WeakEntry;,"Lcom/lewa/guava/collect/MapMaker$WeakEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$WeakEntry;->internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1056
    return-void
.end method
