.class public Lnet/sourceforge/jeval/ExpressionOperand;
.super Ljava/lang/Object;
.source "ExpressionOperand.java"


# instance fields
.field private unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V
    .locals 1
    .parameter "value"
    .parameter "unaryOperator"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionOperand;->value:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionOperand;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 41
    iput-object p1, p0, Lnet/sourceforge/jeval/ExpressionOperand;->value:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lnet/sourceforge/jeval/ExpressionOperand;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    .line 43
    return-void
.end method


# virtual methods
.method public getUnaryOperator()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionOperand;->unaryOperator:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionOperand;->value:Ljava/lang/String;

    return-object v0
.end method
