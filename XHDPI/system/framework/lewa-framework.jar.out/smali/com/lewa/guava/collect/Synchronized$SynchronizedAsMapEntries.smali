.class Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedAsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
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
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, delegate:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 1033
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1070
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1080
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1081
    const/4 v0, 0x1

    .line 1084
    :goto_0
    return v0

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1084
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1037
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1038
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries$1;-><init>(Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1088
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1093
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1095
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1099
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1060
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1061
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries<TK;TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapEntries;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1067
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
