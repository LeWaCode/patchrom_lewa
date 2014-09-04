.class Lcom/lewa/guava/collect/MapMaker$StrongValueReference;
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
    name = "StrongValueReference"
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
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrongValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrongValueReference<TK;TV;>;"
    .local p1, referent:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1136
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
    .line 1144
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrongValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrongValueReference<TK;TV;>;"
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
    .line 1139
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrongValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrongValueReference<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1148
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrongValueReference;,"Lcom/lewa/guava/collect/MapMaker$StrongValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/MapMaker$StrongValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
