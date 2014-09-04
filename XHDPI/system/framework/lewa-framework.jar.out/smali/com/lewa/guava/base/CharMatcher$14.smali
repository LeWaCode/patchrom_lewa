.class Lcom/lewa/guava/base/CharMatcher$14;
.super Lcom/lewa/guava/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/base/CharMatcher;->negate()Lcom/lewa/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/base/CharMatcher;

.field final synthetic val$original:Lcom/lewa/guava/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/lewa/guava/base/CharMatcher;Lcom/lewa/guava/base/CharMatcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/lewa/guava/base/CharMatcher$14;->this$0:Lcom/lewa/guava/base/CharMatcher;

    iput-object p2, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    invoke-direct {p0}, Lcom/lewa/guava/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 564
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "sequence"

    .prologue
    .line 576
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/lewa/guava/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/base/CharMatcher;->matches(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "sequence"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/lewa/guava/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public negate()Lcom/lewa/guava/base/CharMatcher;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lewa/guava/base/CharMatcher$14;->val$original:Lcom/lewa/guava/base/CharMatcher;

    return-object v0
.end method
