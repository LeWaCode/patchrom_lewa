.class public abstract Llewa/laml/data/Expression$FunctionImpl;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FunctionImpl"
.end annotation


# instance fields
.field public params:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "p"

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput p1, p0, Llewa/laml/data/Expression$FunctionImpl;->params:I

    .line 786
    return-void
.end method


# virtual methods
.method public abstract evaluate([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)D
.end method

.method public abstract evaluateStr([Llewa/laml/data/Expression;Llewa/laml/data/Variables;)Ljava/lang/String;
.end method
