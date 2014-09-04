.class public Lcom/lewa/javax/annotation/MatchesPattern$Checker;
.super Ljava/lang/Object;
.source "MatchesPattern.java"

# interfaces
.implements Lcom/lewa/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/javax/annotation/MatchesPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/javax/annotation/meta/TypeQualifierValidator",
        "<",
        "Lcom/lewa/javax/annotation/MatchesPattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/lewa/javax/annotation/MatchesPattern;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 3
    .parameter "annotation"
    .parameter "value"

    .prologue
    .line 55
    invoke-interface {p1}, Lcom/lewa/javax/annotation/MatchesPattern;->value()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/lewa/javax/annotation/MatchesPattern;->flags()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 56
    .local v0, p:Ljava/util/regex/Pattern;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;

    .line 58
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Lcom/lewa/javax/annotation/MatchesPattern;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/javax/annotation/MatchesPattern$Checker;->forConstantValue(Lcom/lewa/javax/annotation/MatchesPattern;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method
