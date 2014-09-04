.class Llewa/laml/data/Expression$NumberExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberExpression"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberExpression"


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "exp"

    .prologue
    .line 521
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 525
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Llewa/laml/data/Expression$NumberExpression;->mValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid NumberExpression:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 532
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$NumberExpression;)V

    .line 533
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 2
    .parameter "var"

    .prologue
    .line 538
    iget-wide v0, p0, Llewa/laml/data/Expression$NumberExpression;->mValue:D

    return-wide v0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 544
    iget-object v0, p0, Llewa/laml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 545
    iget-wide v0, p0, Llewa/laml/data/Expression$NumberExpression;->mValue:D

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 546
    :cond_0
    iget-object v0, p0, Llewa/laml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    return-object v0
.end method
