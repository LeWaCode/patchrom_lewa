.class Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapDifference$ValueDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/collect/MapDifference$ValueDifference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    .local p1, left:Ljava/lang/Object;,"TV;"
    .local p2, right:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    .line 437
    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    .line 438
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Lcom/lewa/javax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    const/4 v1, 0x0

    .line 449
    instance-of v2, p1, Lcom/lewa/guava/collect/MapDifference$ValueDifference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 450
    check-cast v0, Lcom/lewa/guava/collect/MapDifference$ValueDifference;

    .line 452
    .local v0, that:Lcom/lewa/guava/collect/MapDifference$ValueDifference;,"Lcom/lewa/guava/collect/MapDifference$ValueDifference<*>;"
    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference$ValueDifference;->leftValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference$ValueDifference;->rightValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lewa/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 455
    .end local v0           #that:Lcom/lewa/guava/collect/MapDifference$ValueDifference;,"Lcom/lewa/guava/collect/MapDifference$ValueDifference<*>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 459
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public leftValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public rightValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    .local p0, this:Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
