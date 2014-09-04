.class Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;

.field final synthetic val$mapIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 826
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->this$1:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 828
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 826
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet.1;"
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 833
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV1;>;"
    new-instance v1, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1$1;-><init>(Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 844
    .local p0, this:Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;,"Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$TransformedValuesMap$EntrySet$1;->val$mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 845
    return-void
.end method
