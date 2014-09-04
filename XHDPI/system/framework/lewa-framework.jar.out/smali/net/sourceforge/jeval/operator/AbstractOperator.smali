.class public abstract Lnet/sourceforge/jeval/operator/AbstractOperator;
.super Ljava/lang/Object;
.source "AbstractOperator.java"

# interfaces
.implements Lnet/sourceforge/jeval/operator/Operator;


# instance fields
.field private precedence:I

.field private symbol:Ljava/lang/String;

.field private unary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "symbol"
    .parameter "precedence"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    .line 29
    iput v1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->precedence:I

    .line 31
    iput-boolean v1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->unary:Z

    .line 43
    iput-object p1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    .line 44
    iput p2, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->precedence:I

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "symbol"
    .parameter "precedence"
    .parameter "unary"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    .line 29
    iput v1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->precedence:I

    .line 31
    iput-boolean v1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->unary:Z

    .line 62
    iput-object p1, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    .line 63
    iput p2, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->precedence:I

    .line 64
    iput-boolean p3, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->unary:Z

    .line 65
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 157
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    instance-of v2, p1, Lnet/sourceforge/jeval/operator/AbstractOperator;

    if-nez v2, :cond_2

    .line 162
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid operator object."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, p1

    .line 165
    check-cast v0, Lnet/sourceforge/jeval/operator/AbstractOperator;

    .line 167
    .local v0, operator:Lnet/sourceforge/jeval/operator/AbstractOperator;
    iget-object v2, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/operator/AbstractOperator;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public evaluate(D)D
    .locals 2
    .parameter "operand"

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluate(DD)D
    .locals 2
    .parameter "leftOperand"
    .parameter "rightOperand"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "leftOperand"
    .parameter "rightOperand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/EvaluationException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operation for a string."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getPrecedence()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->precedence:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public isUnary()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lnet/sourceforge/jeval/operator/AbstractOperator;->unary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lnet/sourceforge/jeval/operator/AbstractOperator;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
