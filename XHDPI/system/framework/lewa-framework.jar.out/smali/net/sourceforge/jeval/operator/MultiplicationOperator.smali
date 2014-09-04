.class public Lnet/sourceforge/jeval/operator/MultiplicationOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "MultiplicationOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "*"

    const/4 v1, 0x6

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
    .line 40
    new-instance v0, Ljava/lang/Double;

    mul-double v1, p1, p3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 42
    .local v0, rtnValue:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method
