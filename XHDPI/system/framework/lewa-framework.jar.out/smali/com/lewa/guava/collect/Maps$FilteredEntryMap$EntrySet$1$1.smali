.class Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;
.super Lcom/lewa/guava/collect/ForwardingMapEntry;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1200
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->this$2:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1200
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1202
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, this:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;,"Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1.1;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->this$2:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;

    iget-object v0, v0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1;->this$1:Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;

    iget-object v0, v0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet;->this$0:Lcom/lewa/guava/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$FilteredEntryMap$EntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/lewa/guava/collect/Maps$FilteredEntryMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/lewa/guava/base/Preconditions;->checkArgument(Z)V

    .line 1206
    invoke-super {p0, p1}, Lcom/lewa/guava/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
