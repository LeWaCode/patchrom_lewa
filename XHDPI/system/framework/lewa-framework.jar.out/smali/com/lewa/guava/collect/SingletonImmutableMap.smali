.class final Lcom/lewa/guava/collect/SingletonImmutableMap;
.super Lcom/lewa/guava/collect/ImmutableMap;
.source "SingletonImmutableMap.java"


# annotations
.annotation build Lcom/lewa/guava/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/guava/collect/SingletonImmutableMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient values:Lcom/lewa/guava/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    .local p1, singleKey:Ljava/lang/Object;,"TK;"
    .local p2, singleValue:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableMap;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ImmutableMap;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 80
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method private entry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 86
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/lewa/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 103
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    .line 114
    .local v0, es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lewa/guava/collect/SingletonImmutableMap;->entry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #es:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->entrySet:Lcom/lewa/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/SingletonImmutableMap;->entrySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    if-ne p1, p0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_4

    move-object v1, p1

    .line 161
    check-cast v1, Ljava/util/Map;

    .line 162
    .local v1, that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v4, v2, :cond_2

    move v2, v3

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 166
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v4, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #that:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_4
    move v2, v3

    .line 169
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 173
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/lewa/guava/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->keySet:Lcom/lewa/guava/collect/ImmutableSet;

    .line 121
    .local v0, ks:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TK;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    .end local v0           #ks:Lcom/lewa/guava/collect/ImmutableSet;,"Lcom/lewa/guava/collect/ImmutableSet<TK;>;"
    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->keySet:Lcom/lewa/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/SingletonImmutableMap;->keySet()Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/lewa/guava/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lewa/guava/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    .line 128
    .local v0, v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;

    .end local v0           #v:Lcom/lewa/guava/collect/ImmutableCollection;,"Lcom/lewa/guava/collect/ImmutableCollection<TV;>;"
    iget-object v1, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/lewa/guava/collect/SingletonImmutableMap$Values;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lewa/guava/collect/SingletonImmutableMap;->values:Lcom/lewa/guava/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/lewa/guava/collect/SingletonImmutableMap;,"Lcom/lewa/guava/collect/SingletonImmutableMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/SingletonImmutableMap;->values()Lcom/lewa/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
