.class public Lcom/lewa/javax/annotation/Nonnull$Checker;
.super Ljava/lang/Object;
.source "Nonnull.java"

# interfaces
.implements Lcom/lewa/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/javax/annotation/Nonnull;
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
        "Lcom/lewa/javax/annotation/Nonnull;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/lewa/javax/annotation/Nonnull;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 1
    .parameter "qualifierqualifierArgument"
    .parameter "value"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    sget-object v0, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    check-cast p1, Lcom/lewa/javax/annotation/Nonnull;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/javax/annotation/Nonnull$Checker;->forConstantValue(Lcom/lewa/javax/annotation/Nonnull;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method
