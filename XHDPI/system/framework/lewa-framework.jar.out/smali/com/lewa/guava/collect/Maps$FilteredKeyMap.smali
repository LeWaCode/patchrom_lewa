.class Lcom/lewa/guava/collect/Maps$FilteredKeyMap;
.super Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/Maps$AbstractFilteredMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keyPredicate:Lcom/lewa/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Predicate",
            "<-TK;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Predicate;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-TK;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredKeyMap;,"Lcom/lewa/guava/collect/Maps$FilteredKeyMap<TK;TV;>;"
    .local p1, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, keyPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TK;>;"
    .local p3, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p3}, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)V

    .line 1137
    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->keyPredicate:Lcom/lewa/guava/base/Predicate;

    .line 1138
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1162
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredKeyMap;,"Lcom/lewa/guava/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->keyPredicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1143
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredKeyMap;,"Lcom/lewa/guava/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    .line 1144
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v1, v2}, Lcom/lewa/guava/collect/Sets;->filter(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
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
    .line 1152
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredKeyMap;,"Lcom/lewa/guava/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    .line 1153
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->keyPredicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v1, v2}, Lcom/lewa/guava/collect/Sets;->filter(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
