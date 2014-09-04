.class Lcom/lewa/guava/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/lewa/guava/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/guava/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/base/Predicate",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final components:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lewa/guava/base/Predicate",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    .local p1, components:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/lewa/guava/base/Predicate<-TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/lewa/guava/base/Predicates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/lewa/guava/base/Predicates$AndPredicate;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/Predicate;

    .line 320
    .local v1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-interface {v1, p1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    const/4 v2, 0x0

    .line 324
    .end local v1           #predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 334
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    instance-of v1, p1, Lcom/lewa/guava/base/Predicates$AndPredicate;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 335
    check-cast v0, Lcom/lewa/guava/base/Predicates$AndPredicate;

    .line 336
    .local v0, that:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<*>;"
    iget-object v1, p0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    #calls: Lcom/lewa/guava/base/Predicates;->iterableElementsEqual(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    invoke-static {v1, v2}, Lcom/lewa/guava/base/Predicates;->access$700(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v1

    .line 338
    .end local v0           #that:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 327
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    const/4 v2, -0x1

    .line 328
    .local v2, result:I
    iget-object v3, p0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/guava/base/Predicate;

    .line 329
    .local v1, predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v2, v3

    goto :goto_0

    .line 331
    .end local v1           #predicate:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<-TT;>;"
    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    .local p0, this:Lcom/lewa/guava/base/Predicates$AndPredicate;,"Lcom/lewa/guava/base/Predicates$AndPredicate<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "And("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lewa/guava/base/Predicates;->access$800()Lcom/lewa/guava/base/Joiner;

    move-result-object v1

    iget-object v2, p0, Lcom/lewa/guava/base/Predicates$AndPredicate;->components:Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Lcom/lewa/guava/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
