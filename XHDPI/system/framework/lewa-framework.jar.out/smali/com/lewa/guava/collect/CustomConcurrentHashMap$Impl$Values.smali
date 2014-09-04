.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;
.super Ljava/util/AbstractCollection;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1849
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1868
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1869
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1864
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1860
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$ValueIterator;

    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$ValueIterator;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1856
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.Values;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$Values;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
