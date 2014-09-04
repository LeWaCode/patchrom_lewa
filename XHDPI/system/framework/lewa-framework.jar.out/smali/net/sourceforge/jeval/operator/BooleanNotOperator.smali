.class public Lnet/sourceforge/jeval/operator/BooleanNotOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "BooleanNotOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "!"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;IZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 3
    .parameter "operand"

    .prologue
    const-wide/high16 v0, 0x3ff0

    .line 38
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 39
    const-wide/16 v0, 0x0

    .line 42
    :cond_0
    return-wide v0
.end method
