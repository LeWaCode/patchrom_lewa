.class Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;
.super Lcom/lewa/guava/collect/MapMaker$SoftEntry;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkedSoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/MapMaker$SoftEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/lewa/guava/collect/MapMaker$ReferenceEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/lewa/guava/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;,"Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry<TK;TV;>;"
    .local p1, internals:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p4, next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;,"Lcom/lewa/guava/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/lewa/guava/collect/MapMaker$SoftEntry;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;I)V

    .line 1011
    iput-object p4, p0, Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;->next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    .line 1012
    return-void
.end method


# virtual methods
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
    .line 1017
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;,"Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/MapMaker$LinkedSoftEntry;->next:Lcom/lewa/guava/collect/MapMaker$ReferenceEntry;

    return-object v0
.end method
