.class Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;
.super Lcom/lewa/guava/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap;Lcom/lewa/guava/collect/Maps$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1187
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;-><init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1187
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1187
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
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
    .line 1189
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

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
    .line 1193
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap<TK;TV;>.EntrySet;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1194
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;-><init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method
