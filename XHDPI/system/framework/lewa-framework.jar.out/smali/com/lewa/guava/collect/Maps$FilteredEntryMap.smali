.class Lcom/lewa/guava/collect/Maps$FilteredEntryMap;
.super Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredEntryMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/Maps$FilteredEntryMap$KeySet;,
        Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;
    }
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

.field final filteredEntrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
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
.method constructor <init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/lewa/guava/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1176
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>;"
    .local p1, unfiltered:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p2, entryPredicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lcom/lewa/guava/base/Predicate;)V

    .line 1177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Sets;->filter(Ljava/util/Set;Lcom/lewa/guava/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    .line 1178
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
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
    .line 1183
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->entrySet:Ljava/util/Set;

    .line 1184
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap;Lcom/lewa/guava/collect/Maps$1;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->keySet:Ljava/util/Set;

    .line 1218
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$KeySet;

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap;Lcom/lewa/guava/collect/Maps$1;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
