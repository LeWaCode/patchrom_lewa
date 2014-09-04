.class public Llewa/laml/data/Expression$FunctionExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionExpression"
.end annotation


# static fields
.field protected static sFunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/laml/data/Expression$FunctionImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFun:Llewa/laml/data/Expression$FunctionImpl;

.field private mFunName:Ljava/lang/String;

.field private mParaExps:[Llewa/laml/data/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llewa/laml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    .line 380
    invoke-static {}, Llewa/laml/data/FunctionsLoader;->load()V

    .line 381
    return-void
.end method

.method public constructor <init>([Llewa/laml/data/Expression;Ljava/lang/String;)V
    .locals 0
    .parameter "params"
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 385
    iput-object p1, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    .line 386
    iput-object p2, p0, Llewa/laml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    .line 387
    invoke-direct {p0, p2}, Llewa/laml/data/Expression$FunctionExpression;->parseFunction(Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private parseFunction(Ljava/lang/String;)V
    .locals 6
    .parameter "fun"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 391
    sget-object v1, Llewa/laml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression$FunctionImpl;

    .line 392
    .local v0, fd:Llewa/laml/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid function:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 393
    iput-object v0, p0, Llewa/laml/data/Expression$FunctionExpression;->mFun:Llewa/laml/data/Expression$FunctionImpl;

    .line 394
    iget-object v1, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    array-length v1, v1

    iget v4, v0, Llewa/laml/data/Expression$FunctionImpl;->params:I

    if-lt v1, v4, :cond_1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameters count not matching for function: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Llewa/laml/util/Utils;->asserts(ZLjava/lang/String;)V

    .line 396
    return-void

    :cond_0
    move v1, v3

    .line 392
    goto :goto_0

    :cond_1
    move v2, v3

    .line 394
    goto :goto_1
.end method

.method public static registerFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V
    .locals 4
    .parameter "f"
    .parameter "d"

    .prologue
    .line 399
    sget-object v1, Llewa/laml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/Expression$FunctionImpl;

    .line 400
    .local v0, fun:Llewa/laml/data/Expression$FunctionImpl;
    if-eqz v0, :cond_0

    .line 401
    const-string v1, "Expression"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicated function name registation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    return-void
.end method

.method public static removeFunction(Ljava/lang/String;Llewa/laml/data/Expression$FunctionImpl;)V
    .locals 1
    .parameter "f"
    .parameter "d"

    .prologue
    .line 405
    sget-object v0, Llewa/laml/data/Expression$FunctionExpression;->sFunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method


# virtual methods
.method public accept(Llewa/laml/data/ExpressionVisitor;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 409
    invoke-virtual {p1, p0}, Llewa/laml/data/ExpressionVisitor;->visit(Llewa/laml/data/Expression$FunctionExpression;)V

    .line 410
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    array-length v0, v2

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    iget-object v2, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Llewa/laml/data/Expression;->accept(Llewa/laml/data/ExpressionVisitor;)V

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_0
    return-void
.end method

.method public evaluate(Llewa/laml/data/Variables;)D
    .locals 2
    .parameter "var"

    .prologue
    .line 415
    iget-object v0, p0, Llewa/laml/data/Expression$FunctionExpression;->mFun:Llewa/laml/data/Expression$FunctionImpl;

    iget-object v1, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    invoke-virtual {v0, v1, p1}, Llewa/laml/data/Expression$FunctionImpl;->evaluate([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;
    .locals 2
    .parameter "var"

    .prologue
    .line 419
    iget-object v0, p0, Llewa/laml/data/Expression$FunctionExpression;->mFun:Llewa/laml/data/Expression$FunctionImpl;

    iget-object v1, p0, Llewa/laml/data/Expression$FunctionExpression;->mParaExps:[Llewa/laml/data/Expression;

    invoke-virtual {v0, v1, p1}, Llewa/laml/data/Expression$FunctionImpl;->evaluateStr([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Llewa/laml/data/Expression$FunctionExpression;->mFunName:Ljava/lang/String;

    return-object v0
.end method
