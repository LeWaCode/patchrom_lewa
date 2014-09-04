.class Lcom/lewa/guava/base/Predicates$CompositionPredicate;
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
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/base/Predicate",
        "<TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lcom/lewa/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lcom/lewa/guava/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lewa/guava/base/Predicate",
            "<TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Function;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lewa/guava/base/Predicate",
            "<TB;>;",
            "Lcom/lewa/guava/base/Function",
            "<TA;+TB;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, p:Lcom/lewa/guava/base/Predicate;,"Lcom/lewa/guava/base/Predicate<TB;>;"
    .local p2, f:Lcom/lewa/guava/base/Function;,"Lcom/lewa/guava/base/Function<TA;+TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Predicate;

    iput-object v0, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    .line 507
    invoke-static {p2}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lewa/guava/base/Function;

    iput-object v0, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Function;Lcom/lewa/guava/base/Predicates$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 500
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    invoke-direct {p0, p1, p2}, Lcom/lewa/guava/base/Predicates$CompositionPredicate;-><init>(Lcom/lewa/guava/base/Predicate;Lcom/lewa/guava/base/Function;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 511
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, a:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    iget-object v1, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    invoke-interface {v1, p1}, Lcom/lewa/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    const/4 v1, 0x0

    .line 515
    instance-of v2, p1, Lcom/lewa/guava/base/Predicates$CompositionPredicate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 516
    check-cast v0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;

    .line 517
    .local v0, that:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<**>;"
    iget-object v2, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    iget-object v3, v0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    iget-object v3, v0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 519
    .end local v0           #that:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<**>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 536
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    iget-object v0, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 540
    .local p0, this:Lcom/lewa/guava/base/Predicates$CompositionPredicate;,"Lcom/lewa/guava/base/Predicates$CompositionPredicate<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->p:Lcom/lewa/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lewa/guava/base/Predicates$CompositionPredicate;->f:Lcom/lewa/guava/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
