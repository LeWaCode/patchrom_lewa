.class public Lnet/sourceforge/jeval/operator/AdditionOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "AdditionOperator.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "+"

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;IZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 0
    .parameter "operand"

    .prologue
    .line 68
    return-wide p1
.end method

.method public evaluate(DD)D
    .locals 3
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Double;

    add-double v1, p1, p3

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 42
    .local v0, rtnValue:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, rtnValue:Ljava/lang/String;
    return-object v0
.end method
