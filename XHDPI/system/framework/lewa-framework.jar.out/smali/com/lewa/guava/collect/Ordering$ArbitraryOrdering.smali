.class Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;
.super Lcom/lewa/guava/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private uids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/lewa/guava/collect/Ordering;-><init>()V

    .line 237
    new-instance v0, Lcom/lewa/guava/collect/MapMaker;

    invoke-direct {v0}, Lcom/lewa/guava/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lcom/lewa/guava/collect/Platform;->tryWeakKeys(Lcom/lewa/guava/collect/MapMaker;)Lcom/lewa/guava/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering$1;

    invoke-direct {v1, p0}, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering$1;-><init>(Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;)V

    invoke-virtual {v0, v1}, Lcom/lewa/guava/collect/MapMaker;->makeComputingMap(Lcom/lewa/guava/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 247
    if-ne p1, p2, :cond_0

    .line 248
    const/4 v3, 0x0

    .line 261
    :goto_0
    return v3

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 251
    .local v0, leftCode:I
    invoke-virtual {p0, p2}, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 252
    .local v2, rightCode:I
    if-eq v0, v2, :cond_2

    .line 253
    if-ge v0, v2, :cond_1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 257
    :cond_2
    iget-object v3, p0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/lewa/guava/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 258
    .local v1, result:I
    if-nez v1, :cond_3

    .line 259
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    move v3, v1

    .line 261
    goto :goto_0
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 277
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
