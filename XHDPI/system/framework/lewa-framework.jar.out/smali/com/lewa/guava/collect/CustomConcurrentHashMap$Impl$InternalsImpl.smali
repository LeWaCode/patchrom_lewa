.class Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Internals",
        "<TK;TV;TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 673
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.InternalsImpl;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.InternalsImpl;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 679
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 682
    .local v0, hash:I
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.InternalsImpl;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    .line 695
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entry"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 698
    .local v0, hash:I
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)Z"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.InternalsImpl;"
    .local p1, entry:Ljava/lang/Object;,"TE;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 687
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entry"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 690
    .local v0, hash:I
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$InternalsImpl;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v1, v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1
.end method
