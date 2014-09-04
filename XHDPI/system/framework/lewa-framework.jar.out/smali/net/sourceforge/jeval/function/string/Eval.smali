.class public Lnet/sourceforge/jeval/function/string/Eval;
.super Ljava/lang/Object;
.source "Eval.java"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 6
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 64
    .local v2, result:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v4, v5}, Lnet/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 69
    const/4 v3, 0x0

    .line 71
    .local v3, resultType:I
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_0
    new-instance v4, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v4, v2, v3}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v4

    .line 65
    .end local v3           #resultType:I
    :catch_0
    move-exception v0

    .line 66
    .local v0, ee:Lnet/sourceforge/jeval/EvaluationException;
    new-instance v4, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/EvaluationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 72
    .end local v0           #ee:Lnet/sourceforge/jeval/EvaluationException;
    .restart local v3       #resultType:I
    :catch_1
    move-exception v1

    .line 73
    .local v1, nfe:Ljava/lang/NumberFormatException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "eval"

    return-object v0
.end method
