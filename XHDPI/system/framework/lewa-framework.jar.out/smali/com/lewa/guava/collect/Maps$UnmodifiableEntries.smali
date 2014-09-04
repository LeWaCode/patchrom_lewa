.class Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;
.super Lcom/lewa/guava/collect/ForwardingCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lewa/guava/collect/ForwardingCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingCollection;-><init>()V

    .line 575
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;->entries:Ljava/util/Collection;

    .line 576
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 605
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lewa/guava/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-super {p0}, Lcom/lewa/guava/collect/ForwardingCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 584
    .local v0, delegate:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;-><init>(Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 597
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    invoke-static {p0}, Lcom/lewa/guava/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 601
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries<TK;TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/lewa/guava/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
