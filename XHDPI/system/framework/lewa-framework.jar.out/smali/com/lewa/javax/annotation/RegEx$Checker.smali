.class public Lcom/lewa/javax/annotation/RegEx$Checker;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Lcom/lewa/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/javax/annotation/RegEx;
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
        "Lcom/lewa/javax/annotation/RegEx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/lewa/javax/annotation/RegEx;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 2
    .parameter "annotation"
    .parameter "value"

    .prologue
    .line 60
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 61
    sget-object v1, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    .line 68
    .end local p2
    :goto_0
    return-object v1

    .line 64
    .restart local p2
    :cond_0
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    sget-object v1, Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/util/regex/PatternSyntaxException;
    sget-object v1, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p1, Lcom/lewa/javax/annotation/RegEx;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/javax/annotation/RegEx$Checker;->forConstantValue(Lcom/lewa/javax/annotation/RegEx;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method
