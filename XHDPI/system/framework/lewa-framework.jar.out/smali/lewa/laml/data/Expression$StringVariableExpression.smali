.class Llewa/laml/data/Expression$StringVariableExpression;
.super Llewa/laml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringVariableExpression"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StringVariableExpression"


# instance fields
.field private mIndexedVar:Llewa/laml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$VariableExpression;-><init>(Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method private ensureVar(Llewa/laml/data/Variables;)V
    .locals 3
    .parameter "var"

    .prologue
    .line 730
    iget-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/data/Expression$StringVariableExpression;->mVar:Llewa/laml/util/Variable;

    invoke-virtual {v1}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llewa/laml/data/Expression$StringVariableExpression;->mVar:Llewa/laml/util/Variable;

    invoke-virtual {v2}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    .line 733
    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 724
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$StringVariableExpression;)V

    .line 725
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 6
    .parameter "var"

    .prologue
    const-wide/16 v2, 0x0

    .line 738
    invoke-virtual {p0, p1}, Llewa/laml/data/Expression$StringVariableExpression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 739
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-wide v2

    .line 741
    :cond_1
    if-eqz v1, :cond_0

    .line 743
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "StringVariableExpression"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 753
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$StringVariableExpression;->ensureVar(Llewa/laml/data/Variables;)V

    .line 754
    iget-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedStringVariable;->getIndex()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedStringVariable;->getVersion()I

    move-result v0

    return v0
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 768
    invoke-direct {p0, p1}, Llewa/laml/data/Expression$StringVariableExpression;->ensureVar(Llewa/laml/data/Variables;)V

    .line 769
    iget-object v0, p0, Llewa/laml/data/Expression$StringVariableExpression;->mIndexedVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0}, Llewa/laml/util/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
