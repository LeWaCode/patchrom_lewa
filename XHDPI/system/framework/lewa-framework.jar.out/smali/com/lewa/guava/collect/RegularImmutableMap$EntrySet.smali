.class Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;
.super Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient map:Lcom/lewa/guava/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/RegularImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/RegularImmutableMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/collect/RegularImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;,"Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    .local p1, map:Lcom/lewa/guava/collect/RegularImmutableMap;,"Lcom/lewa/guava/collect/RegularImmutableMap<TK;TV;>;"
    #getter for: Lcom/lewa/guava/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {p1}, Lcom/lewa/guava/collect/RegularImmutableMap;->access$000(Lcom/lewa/guava/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lewa/guava/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 162
    iput-object p1, p0, Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;->map:Lcom/lewa/guava/collect/RegularImmutableMap;

    .line 163
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "target"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;,"Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 166
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 167
    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/lewa/guava/collect/RegularImmutableMap$EntrySet;->map:Lcom/lewa/guava/collect/RegularImmutableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lewa/guava/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, mappedValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 171
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #mappedValue:Ljava/lang/Object;,"TV;"
    :cond_0
    return v2
.end method
