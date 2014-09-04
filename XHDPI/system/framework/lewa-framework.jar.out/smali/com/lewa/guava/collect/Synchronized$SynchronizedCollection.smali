.class Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
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
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, delegate:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 179
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 185
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 187
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
    .line 191
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 197
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 207
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 209
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
    .line 213
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 215
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
    .line 219
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 225
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 227
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
    .line 231
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 233
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
    .line 237
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
