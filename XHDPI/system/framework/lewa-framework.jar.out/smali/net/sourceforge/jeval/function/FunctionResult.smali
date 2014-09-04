.class public Lnet/sourceforge/jeval/function/FunctionResult;
.super Ljava/lang/Object;
.source "FunctionResult.java"


# instance fields
.field private result:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "result"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sourceforge/jeval/function/FunctionException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 49
    :cond_0
    new-instance v0, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v1, "Invalid function result type."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lnet/sourceforge/jeval/function/FunctionResult;->result:Ljava/lang/String;

    .line 53
    iput p2, p0, Lnet/sourceforge/jeval/function/FunctionResult;->type:I

    .line 54
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/sourceforge/jeval/function/FunctionResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/sourceforge/jeval/function/FunctionResult;->type:I

    return v0
.end method
