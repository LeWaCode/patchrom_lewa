.class Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputationExceptionReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 852
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;,"Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    .line 854
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;)Lcom/lewa/guava/collect/MapMaker$ValueReference;
    .locals 0
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
    .line 860
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;,"Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    .local p1, entry:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 856
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;,"Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 863
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;,"Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    new-instance v0, Lcom/lewa/guava/collect/AsynchronousComputationException;

    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/AsynchronousComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
