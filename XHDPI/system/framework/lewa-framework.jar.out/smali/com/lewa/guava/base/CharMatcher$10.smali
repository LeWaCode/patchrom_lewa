.class final Lcom/lewa/guava/base/CharMatcher$10;
.super Lcom/lewa/guava/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/lewa/guava/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-char p1, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match1:C

    iput-char p2, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match2:C

    invoke-direct {p0}, Lcom/lewa/guava/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 465
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/lewa/guava/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 467
    iget-char v0, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match1:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public precomputed()Lcom/lewa/guava/base/CharMatcher;
    .locals 0

    .prologue
    .line 474
    return-object p0
.end method

.method protected setBits(Lcom/lewa/guava/base/CharMatcher$LookupTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 470
    iget-char v0, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match1:C

    invoke-virtual {p1, v0}, Lcom/lewa/guava/base/CharMatcher$LookupTable;->set(C)V

    .line 471
    iget-char v0, p0, Lcom/lewa/guava/base/CharMatcher$10;->val$match2:C

    invoke-virtual {p1, v0}, Lcom/lewa/guava/base/CharMatcher$LookupTable;->set(C)V

    .line 472
    return-void
.end method
