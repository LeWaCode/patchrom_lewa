.class Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;
.super Lcom/lewa/guava/collect/UnmodifiableIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/UnmodifiableIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values;

.field final synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1057
    .local p0, this:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;,"Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;->this$1:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/lewa/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1059
    .local p0, this:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;,"Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, this:Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;,"Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$AbstractFilteredMap$Values$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
