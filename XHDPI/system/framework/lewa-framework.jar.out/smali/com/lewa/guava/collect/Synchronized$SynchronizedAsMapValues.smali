.class Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedAsMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .end parameter
    .parameter "mutex"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1381
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues<TV;>;"
    .local p1, delegate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1382
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1386
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues<TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1387
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Collection<TV;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;-><init>(Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method
