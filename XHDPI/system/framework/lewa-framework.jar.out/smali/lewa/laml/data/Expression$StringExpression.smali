.class Llewa/laml/data/Expression$StringExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringExpression"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StringExpression"


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "exp"

    .prologue
    .line 485
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 488
    iput-object p1, p0, Llewa/laml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 489
    return-void
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 492
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$StringExpression;)V

    .line 493
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 5
    .parameter "var"

    .prologue
    .line 500
    :try_start_0
    iget-object v3, p0, Llewa/laml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 504
    .local v1, value:D
    :goto_0
    return-wide v1

    .line 501
    .end local v1           #value:D
    :catch_0
    move-exception v0

    .line 502
    .local v0, localNumberFormatException:Ljava/lang/NumberFormatException;
    const-wide/16 v1, 0x0

    .restart local v1       #value:D
    goto :goto_0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 1
    .parameter "var"

    .prologue
    .line 510
    iget-object v0, p0, Llewa/laml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    return-object v0
.end method
