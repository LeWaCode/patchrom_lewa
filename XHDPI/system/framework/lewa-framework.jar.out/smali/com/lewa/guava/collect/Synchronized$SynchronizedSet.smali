.class Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
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
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    .local p1, delegate:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 277
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 273
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 284
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 293
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedSet<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
