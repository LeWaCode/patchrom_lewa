.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;
.super Ljava/util/AbstractSet;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1872
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1910
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->clear()V

    .line 1911
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    const/4 v3, 0x0

    .line 1879
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 1882
    check-cast v0, Ljava/util/Map$Entry;

    .line 1883
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1884
    .local v1, key:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1887
    iget-object v4, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v4, v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1889
    .local v2, v:Ljava/lang/Object;,"TV;"
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v4, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1906
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1875
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    new-instance v0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntryIterator;

    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntryIterator;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    const/4 v2, 0x0

    .line 1893
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 1898
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 1896
    check-cast v0, Ljava/util/Map$Entry;

    .line 1897
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1898
    .local v1, key:Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1902
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$EntrySet;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    return v0
.end method
