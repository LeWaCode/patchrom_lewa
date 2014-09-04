.class public Llewa/laml/data/ExpressionVisitor;
.super Ljava/lang/Object;
.source "ExpressionVisitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Llewa/laml/data/Expression$BinaryExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 8
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$FunctionExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 11
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$NumberExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 14
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$NumberVariableExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 17
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$StringExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 20
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$StringVariableExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 23
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$UnaryExpression;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 26
    return-void
.end method
