.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;
.super Lcom/lewa/guava/collect/AbstractMapEntry;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WriteThroughEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/AbstractMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1783
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.WriteThroughEntry;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractMapEntry;-><init>()V

    .line 1784
    iput-object p2, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

    .line 1785
    iput-object p3, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 1786
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->key:Ljava/lang/Object;

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
    .line 1793
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.WriteThroughEntry;"
    iget-object v0, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1805
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.WriteThroughEntry;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    if-nez p1, :cond_0

    .line 1806
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1808
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-virtual {p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1809
    .local v0, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->value:Ljava/lang/Object;

    .line 1810
    return-object v0
.end method
