.class final Lcom/lewa/guava/base/CharMatcher$13;
.super Lcom/lewa/guava/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/base/CharMatcher;->forPredicate(Lcom/lewa/guava/base/Predicate;)Lcom/lewa/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/lewa/guava/base/Predicate;


# direct methods
.method constructor <init>(Lcom/lewa/guava/base/Predicate;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/lewa/guava/base/CharMatcher$13;->val$predicate:Lcom/lewa/guava/base/Predicate;

    invoke-direct {p0}, Lcom/lewa/guava/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 2
    .parameter "character"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$13;->val$predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {p1}, Lcom/lewa/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lewa/guava/base/CharMatcher$13;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$13;->val$predicate:Lcom/lewa/guava/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
