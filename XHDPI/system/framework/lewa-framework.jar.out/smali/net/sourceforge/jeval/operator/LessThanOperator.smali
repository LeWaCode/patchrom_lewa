.class public Lnet/sourceforge/jeval/operator/LessThanOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "LessThanOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "<"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public evaluate(DD)D
    .locals 2
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    .line 42
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 43
    const-wide/high16 v0, 0x3ff0

    .line 46
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 59
    const-string v0, "1.0"

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0.0"

    goto :goto_0
.end method
