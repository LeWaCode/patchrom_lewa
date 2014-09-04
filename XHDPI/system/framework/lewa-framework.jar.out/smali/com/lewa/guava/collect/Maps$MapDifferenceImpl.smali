.class Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/lewa/guava/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/collect/MapDifference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final areEqual:Z

.field final differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/lewa/guava/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final onBoth:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnLeft:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final onlyOnRight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .parameter "areEqual"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/lewa/guava/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    .local p2, onlyOnLeft:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p3, onlyOnRight:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p4, onBoth:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    .local p5, differences:Ljava/util/Map;,"Ljava/util/Map<TK;Lcom/lewa/guava/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-boolean p1, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->areEqual:Z

    .line 365
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    .line 366
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    .line 367
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    .line 368
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    .line 369
    return-void
.end method


# virtual methods
.method public areEqual()Z
    .locals 1

    .prologue
    .line 372
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-boolean v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->areEqual:Z

    return v0
.end method

.method public entriesDiffering()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Lcom/lewa/guava/collect/MapDifference$ValueDifference",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 388
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    return-object v0
.end method

.method public entriesInCommon()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onBoth:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnLeft()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    return-object v0
.end method

.method public entriesOnlyOnRight()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    if-ne p1, p0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    instance-of v3, p1, Lcom/lewa/guava/collect/MapDifference;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 396
    check-cast v0, Lcom/lewa/guava/collect/MapDifference;

    .line 397
    .local v0, other:Lcom/lewa/guava/collect/MapDifference;,"Lcom/lewa/guava/collect/MapDifference<**>;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference;->entriesInCommon()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/lewa/guava/collect/MapDifference;->entriesDiffering()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #other:Lcom/lewa/guava/collect/MapDifference;,"Lcom/lewa/guava/collect/MapDifference<**>;"
    :cond_3
    move v1, v2

    .line 402
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 406
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesOnlyOnLeft()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesOnlyOnRight()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesInCommon()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->entriesDiffering()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lewa/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    .local p0, this:Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;,"Lcom/lewa/guava/collect/Maps$MapDifferenceImpl<TK;TV;>;"
    iget-boolean v1, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->areEqual:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, "equal"

    .line 425
    :goto_0
    return-object v1

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not equal"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    const-string v1, ": only on left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnLeft:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 420
    const-string v1, ": only on right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->onlyOnRight:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    :cond_2
    iget-object v1, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    const-string v1, ": value differences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/collect/Maps$MapDifferenceImpl;->differences:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
