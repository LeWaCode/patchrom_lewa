.class Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;
.super Lcom/lewa/guava/collect/AbstractIterator;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->iterator()Lcom/lewa/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/AbstractIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)V
    .locals 1
    .parameter

    .prologue
    .line 580
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->this$0:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;

    invoke-direct {p0}, Lcom/lewa/guava/collect/AbstractIterator;-><init>()V

    .line 581
    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->this$0:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->access$400(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap;->fromIndex:I
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$300(Lcom/lewa/guava/collect/ImmutableSortedMap;)I

    move-result v0

    iput v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->index:I

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;,"Lcom/lewa/guava/collect/ImmutableSortedMap$Values.1;"
    iget v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->index:I

    iget-object v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->this$0:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->access$400(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v1

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap;->toIndex:I
    invoke-static {v1}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$500(Lcom/lewa/guava/collect/ImmutableSortedMap;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->this$0:Lcom/lewa/guava/collect/ImmutableSortedMap$Values;

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->map:Lcom/lewa/guava/collect/ImmutableSortedMap;
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values;->access$400(Lcom/lewa/guava/collect/ImmutableSortedMap$Values;)Lcom/lewa/guava/collect/ImmutableSortedMap;

    move-result-object v0

    #getter for: Lcom/lewa/guava/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/lewa/guava/collect/ImmutableSortedMap;->access$200(Lcom/lewa/guava/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget v1, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lewa/guava/collect/ImmutableSortedMap$Values$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
