.class Llewa/laml/data/Expression$UnaryExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/Expression$UnaryExpression$Ope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnaryExpression"


# instance fields
.field private mExp:Llewa/laml/data/Expression;

.field private mOpe:Llewa/laml/data/Expression$UnaryExpression$Ope;


# direct methods
.method public constructor <init>(Llewa/laml/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp"
    .parameter "op"

    .prologue
    .line 660
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 658
    sget-object v0, Llewa/laml/data/Expression$UnaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$UnaryExpression$Ope;

    iput-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mOpe:Llewa/laml/data/Expression$UnaryExpression$Ope;

    .line 663
    iput-object p1, p0, Llewa/laml/data/Expression$UnaryExpression;->mExp:Llewa/laml/data/Expression;

    .line 664
    invoke-static {p2}, Llewa/laml/data/Expression$UnaryExpression;->parseOperator(Ljava/lang/String;)Llewa/laml/data/Expression$UnaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mOpe:Llewa/laml/data/Expression$UnaryExpression$Ope;

    .line 665
    iget-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mOpe:Llewa/laml/data/Expression$UnaryExpression$Ope;

    sget-object v1, Llewa/laml/data/Expression$UnaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$UnaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 666
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Llewa/laml/data/Expression$UnaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 672
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Llewa/laml/data/Expression$UnaryExpression$Ope;->MIN:Llewa/laml/data/Expression$UnaryExpression$Ope;

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Llewa/laml/data/Expression$UnaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$UnaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 678
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$UnaryExpression;)V

    .line 679
    iget-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 680
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 685
    sget-object v0, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$UnaryExpression$Ope:[I

    iget-object v1, p0, Llewa/laml/data/Expression$UnaryExpression;->mOpe:Llewa/laml/data/Expression$UnaryExpression$Ope;

    invoke-virtual {v1}, Llewa/laml/data/Expression$UnaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 689
    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 687
    :pswitch_0
    const-wide/16 v0, 0x0

    iget-object v2, p0, Llewa/laml/data/Expression$UnaryExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 698
    invoke-virtual {p0, p1}, Llewa/laml/data/Expression$UnaryExpression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    invoke-static {v0, v1}, Llewa/laml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 1
    .parameter "var"

    .prologue
    .line 704
    iget-object v0, p0, Llewa/laml/data/Expression$UnaryExpression;->mExp:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v0

    return v0
.end method
