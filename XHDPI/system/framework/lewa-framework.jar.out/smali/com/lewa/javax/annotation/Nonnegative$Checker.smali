.class public Lcom/lewa/javax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Lcom/lewa/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/javax/annotation/Nonnegative;
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
        "Lcom/lewa/javax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/lewa/javax/annotation/Nonnegative;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 7
    .parameter "annotation"
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 53
    instance-of v3, p2, Ljava/lang/Number;

    if-nez v3, :cond_0

    .line 54
    sget-object v2, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    .line 69
    :goto_0
    return-object v2

    :cond_0
    move-object v1, p2

    .line 56
    check-cast v1, Ljava/lang/Number;

    .line 57
    .local v1, value:Ljava/lang/Number;
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 66
    .local v0, isNegative:Z
    :goto_1
    if-eqz v0, :cond_8

    .line 67
    sget-object v2, Lcom/lewa/javax/annotation/meta/When;->NEVER:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0

    .end local v0           #isNegative:Z
    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .restart local v0       #isNegative:Z
    :goto_2
    goto :goto_1

    .end local v0           #isNegative:Z
    :cond_3
    move v0, v2

    goto :goto_2

    .line 61
    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .restart local v0       #isNegative:Z
    :goto_3
    goto :goto_1

    .end local v0           #isNegative:Z
    :cond_5
    move v0, v2

    goto :goto_3

    .line 64
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-gez v3, :cond_7

    .restart local v0       #isNegative:Z
    :goto_4
    goto :goto_1

    .end local v0           #isNegative:Z
    :cond_7
    move v0, v2

    goto :goto_4

    .line 69
    .restart local v0       #isNegative:Z
    :cond_8
    sget-object v2, Lcom/lewa/javax/annotation/meta/When;->ALWAYS:Lcom/lewa/javax/annotation/meta/When;

    goto :goto_0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    check-cast p1, Lcom/lewa/javax/annotation/Nonnegative;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/lewa/javax/annotation/Nonnegative$Checker;->forConstantValue(Lcom/lewa/javax/annotation/Nonnegative;Ljava/lang/Object;)Lcom/lewa/javax/annotation/meta/When;

    move-result-object v0

    return-object v0
.end method
