.class final Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeyIterator;
.super Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$HashIterator;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V
    .locals 0
    .parameter

    .prologue
    .line 1761
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeyIterator;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeyIterator;"
    iput-object p1, p0, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeyIterator;->this$0:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$HashIterator;-><init>(Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1764
    .local p0, this:Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$KeyIterator;,"Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl<TK;TV;TE;>.KeyIterator;"
    invoke-super {p0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$HashIterator;->nextEntry()Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/guava/collect/CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
