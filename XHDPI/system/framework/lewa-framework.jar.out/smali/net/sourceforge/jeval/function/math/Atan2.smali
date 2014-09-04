.class public Lnet/sourceforge/jeval/function/math/Atan2;
.super Ljava/lang/Object;
.source "Atan2.java"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 10
    .parameter "evaluator"
    .parameter "arguments"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 61
    const/4 v6, 0x0

    .line 63
    .local v6, result:Ljava/lang/Double;
    const/16 v7, 0x2c

    invoke-static {p2, v7}, Lnet/sourceforge/jeval/function/FunctionHelper;->getDoubles(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v5

    .line 66
    .local v5, numbers:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 67
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v8, "Two numeric arguments are required."

    invoke-direct {v7, v8}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 72
    .local v0, argumentOne:D
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 73
    .local v2, argumentTwo:D
    new-instance v6, Ljava/lang/Double;

    .end local v6           #result:Ljava/lang/Double;
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/lang/Double;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .restart local v6       #result:Ljava/lang/Double;
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v9}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v7

    .line 74
    .end local v0           #argumentOne:D
    .end local v2           #argumentTwo:D
    .end local v6           #result:Ljava/lang/Double;
    :catch_0
    move-exception v4

    .line 75
    .local v4, e:Ljava/lang/Exception;
    new-instance v7, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v8, "Two numeric arguments are required."

    invoke-direct {v7, v8, v4}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "atan2"

    return-object v0
.end method
