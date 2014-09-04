.class Llewa/laml/data/Expression$NumberVariableExpression;
.super Llewa/laml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberVariableExpression"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NumberVariableExpression"


# instance fields
.field private mIndexedVar:Llewa/laml/util/IndexedNumberVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private ensureVar(Llewa/laml/data/Variables;)V
    .locals 3
    .parameter "var"

    .prologue
    .line 453
    iget-object v0, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mVar:Llewa/laml/util/Variable;

    invoke-virtual {v1}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mVar:Llewa/laml/util/Variable;

    invoke-virtual {v2}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 439
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$NumberVariableExpression;)V

    .line 440
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 3
    .parameter "var"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$NumberVariableExpression;->ensureVar(Llewa/laml/data/Variables;)V

    .line 462
    iget-object v1, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v1}, Llewa/laml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    .line 463
    .local v0, value:Ljava/lang/Double;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Llewa/laml/data/Expression$NumberVariableExpression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedNumberVariable;->getIndex()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedNumberVariable;->getVersion()I

    move-result v0

    return v0
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 475
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$NumberVariableExpression;->ensureVar(Llewa/laml/data/Variables;)V

    .line 476
    iget-object v0, p0, Llewa/laml/data/Expression$NumberVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedNumberVariable;->get()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
