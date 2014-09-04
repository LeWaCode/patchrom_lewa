.class public Lnet/sourceforge/jeval/operator/BooleanAndOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "BooleanAndOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "&&"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public evaluate(DD)D
    .locals 3
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    const-wide/high16 v0, 0x3ff0

    .line 40
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
