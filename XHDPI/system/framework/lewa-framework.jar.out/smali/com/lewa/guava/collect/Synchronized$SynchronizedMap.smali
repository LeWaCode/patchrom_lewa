.class Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;
.super Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
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
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, delegate:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1146
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 1154
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1156
    monitor-exit v1

    .line 1157
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1160
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1161
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 1166
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1167
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1168
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
    .line 1138
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1172
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1173
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1177
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
    .line 1235
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1236
    const/4 v0, 0x1

    .line 1239
    :goto_0
    return v0

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1239
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1183
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
    .line 1244
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1245
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1187
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1188
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1195
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1203
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1208
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1209
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1210
    monitor-exit v1

    .line 1211
    return-void

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1215
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1216
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
    .line 1220
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1221
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1226
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/lewa/guava/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 1231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
