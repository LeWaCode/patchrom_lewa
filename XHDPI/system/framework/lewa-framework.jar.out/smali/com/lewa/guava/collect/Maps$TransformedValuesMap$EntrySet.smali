.class Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps$TransformedValuesMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$TransformedValuesMap;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 850
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    iget-object v0, v0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 851
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    const/4 v4, 0x0

    .line 854
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 857
    check-cast v0, Ljava/util/Map$Entry;

    .line 858
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 859
    .local v1, entryKey:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 860
    .local v2, entryValue:Ljava/lang/Object;
    iget-object v5, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    invoke-virtual {v5, v1}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 861
    .local v3, mapValue:Ljava/lang/Object;,"TV2;"
    if-eqz v3, :cond_2

    .line 862
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 864
    :cond_2
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    invoke-virtual {v5, v1}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    iget-object v1, v1, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 826
    .local v0, mapIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV1;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;-><init>(Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 868
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    invoke-virtual {p0, p1}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 869
    check-cast v0, Ljava/util/Map$Entry;

    .line 870
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 871
    .local v1, key:Ljava/lang/Object;
    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    iget-object v2, v2, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->fromMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const/4 v2, 0x1

    .line 874
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #key:Ljava/lang/Object;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 819
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap<TK;TV1;TV2;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$TransformedValuesMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap;->size()I

    move-result v0

    return v0
.end method
