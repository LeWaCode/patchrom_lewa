.class public interface abstract Lnet/sourceforge/jeval/function/Function;
.super Ljava/lang/Object;
.source "Function.java"


# virtual methods
.method public abstract execute(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method
