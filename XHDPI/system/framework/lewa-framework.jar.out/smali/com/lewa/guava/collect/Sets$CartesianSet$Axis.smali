.class Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Sets$CartesianSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Axis"
.end annotation


# instance fields
.field final choices:Lcom/lewa/guava/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/collect/ImmutableSet",
            "<+TB;>;"
        }
    .end annotation
.end field

.field final dividend:I

.field final synthetic this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Sets$CartesianSet;Ljava/util/Set;I)V
    .locals 1
    .parameter
    .parameter
    .parameter "dividend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TB;>;I)V"
        }
    .end annotation

    .prologue
    .line 937
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    .local p2, set:Ljava/util/Set;,"Ljava/util/Set<+TB;>;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    invoke-static {p2}, Lcom/lewa/guava/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/lewa/guava/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    .line 939
    iput p3, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->dividend:I

    .line 940
    return-void
.end method


# virtual methods
.method contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 951
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 955
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    instance-of v1, p1, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 956
    check-cast v0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;

    .line 957
    .local v0, that:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;
    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    iget-object v2, v0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v1, v2}, Lcom/lewa/guava/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 960
    .end local v0           #that:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getForIndex(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSet;->asList()Lcom/lewa/guava/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->dividend:I

    div-int v1, p1, v1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lewa/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 966
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->this$0:Lcom/lewa/guava/collect/Sets$CartesianSet;

    iget v0, v0, Lcom/lewa/guava/collect/Sets$CartesianSet;->size:I

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/lewa/guava/collect/ImmutableSet;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/lewa/guava/collect/ImmutableSet;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 943
    .local p0, this:Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;,"Lcom/lewa/guava/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Sets$CartesianSet$Axis;->choices:Lcom/lewa/guava/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method
