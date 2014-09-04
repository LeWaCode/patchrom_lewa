.class Lcom/lewa/guava/collect/MapMaker$SoftValueReference;
.super Lcom/lewa/guava/base/FinalizableSoftReference;
.source "MapMaker.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/base/FinalizableSoftReference",
        "<TV;>;",
        "Lcom/lewa/guava/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$SoftValueReference;,"Lcom/lewa/guava/collect/MapMaker$SoftValueReference<TK;TV;>;"
    .local p1, referent:Ljava/lang/Object;,"TV;"
    .local p2, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    sget-object v0, Lcom/lewa/guava/collect/MapMaker$QueueHolder;->queue:Lcom/lewa/guava/base/FinalizableReferenceQueue;

    invoke-direct {p0, p1, v0}, Lcom/lewa/guava/base/FinalizableSoftReference;-><init>(Ljava/lang/Object;Lcom/lewa/guava/base/FinalizableReferenceQueue;)V

    .line 1112
    iput-object p2, p0, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;->entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .line 1113
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/lewa/guava/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$SoftValueReference;,"Lcom/lewa/guava/collect/MapMaker$SoftValueReference<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;-><init>(Ljava/lang/Object;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public finalizeReferent()V
    .locals 1

    .prologue
    .line 1116
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$SoftValueReference;,"Lcom/lewa/guava/collect/MapMaker$SoftValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;->entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;->valueReclaimed()V

    .line 1117
    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1125
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$SoftValueReference;,"Lcom/lewa/guava/collect/MapMaker$SoftValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
