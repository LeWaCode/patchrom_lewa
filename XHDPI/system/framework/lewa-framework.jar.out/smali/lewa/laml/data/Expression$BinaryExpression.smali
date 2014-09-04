.class Llewa/laml/data/Expression$BinaryExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/Expression$BinaryExpression$Ope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BinaryExpression"


# instance fields
.field private mExp1:Llewa/laml/data/Expression;

.field private mExp2:Llewa/laml/data/Expression;

.field private mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;


# direct methods
.method public constructor <init>(Llewa/laml/data/Expression;Llewa/laml/data/Expression;Ljava/lang/String;)V
    .locals 3
    .parameter "exp1"
    .parameter "exp2"
    .parameter "op"

    .prologue
    .line 252
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 250
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    iput-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    .line 255
    iput-object p1, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    .line 256
    iput-object p2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    .line 257
    invoke-static {p3}, Llewa/laml/data/Expression$BinaryExpression;->parseOperator(Ljava/lang/String;)Llewa/laml/data/Expression$BinaryExpression$Ope;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    .line 258
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    sget-object v1, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    if-ne v0, v1, :cond_0

    .line 259
    const-string v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    return-void
.end method

.method public static parseOperator(C)Llewa/laml/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 283
    packed-switch p0, :pswitch_data_0

    .line 295
    :pswitch_0
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    :goto_0
    return-object v0

    .line 285
    :pswitch_1
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->ADD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 287
    :pswitch_2
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MIN:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 289
    :pswitch_3
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MUL:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 291
    :pswitch_4
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->DIV:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 293
    :pswitch_5
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MOD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static parseOperator(Ljava/lang/String;)Llewa/laml/data/Expression$BinaryExpression$Ope;
    .locals 1
    .parameter "op"

    .prologue
    .line 266
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->ADD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    .line 277
    :goto_0
    return-object v0

    .line 268
    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MIN:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 270
    :cond_1
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MUL:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 272
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->DIV:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 274
    :cond_3
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->MOD:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0

    .line 277
    :cond_4
    sget-object v0, Llewa/laml/data/Expression$BinaryExpression$Ope;->INVALID:Llewa/laml/data/Expression$BinaryExpression$Ope;

    goto :goto_0
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 300
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$BinaryExpression;)V

    .line 301
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 302
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 303
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 4
    .parameter "var"

    .prologue
    .line 308
    sget-object v0, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v1}, Llewa/laml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 320
    const-string v0, "Expression"

    const-string v1, "fail to evaluate BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 310
    :pswitch_0
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    .line 312
    :pswitch_1
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 316
    :pswitch_3
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    div-double/2addr v0, v2

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v0, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v0, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    rem-double/2addr v0, v2

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 4
    .parameter "var"

    .prologue
    .line 328
    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, str1:Ljava/lang/String;
    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, str2:Ljava/lang/String;
    sget-object v2, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$BinaryExpression$Ope:[I

    iget-object v3, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v3}, Llewa/laml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 340
    const-string v2, "Expression"

    const-string v3, "fail to evaluate string BinaryExpression, invalid operator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    const/4 v0, 0x0

    .end local v0           #str1:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 332
    .restart local v0       #str1:Ljava/lang/String;
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 334
    :cond_2
    if-eqz v0, :cond_0

    .line 336
    if-eqz v1, :cond_1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isNull(Llewa/laml/data/Variables;)Z
    .locals 3
    .parameter "var"

    .prologue
    const/4 v0, 0x0

    .line 349
    sget-object v1, Llewa/laml/data/Expression$1;->$SwitchMap$lewa$laml$data$Expression$BinaryExpression$Ope:[I

    iget-object v2, p0, Llewa/laml/data/Expression$BinaryExpression;->mOpe:Llewa/laml/data/Expression$BinaryExpression$Ope;

    invoke-virtual {v2}, Llewa/laml/data/Expression$BinaryExpression$Ope;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 362
    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    .line 352
    :pswitch_0
    iget-object v1, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v1, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v1, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :pswitch_1
    iget-object v1, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp1:Llewa/laml/data/Expression;

    invoke-virtual {v1, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Llewa/laml/data/Expression$BinaryExpression;->mExp2:Llewa/laml/data/Expression;

    invoke-virtual {v1, p1}, Llewa/laml/data/Expression;->isNull(Llewa/laml/data/Variables;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
