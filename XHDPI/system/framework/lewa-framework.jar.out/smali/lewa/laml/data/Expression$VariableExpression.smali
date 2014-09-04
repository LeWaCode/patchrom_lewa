.class abstract Llewa/laml/data/Expression$VariableExpression;
.super Llewa/laml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "VariableExpression"
.end annotation


# instance fields
.field protected mVar:Llewa/laml/util/Variable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 776
    invoke-direct {p0}, Llewa/laml/data/Expression;-><init>()V

    .line 777
    new-instance v0, Llewa/laml/util/Variable;

    invoke-direct {v0, p1}, Llewa/laml/util/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/data/Expression$VariableExpression;->mVar:Llewa/laml/util/Variable;

    .line 778
    return-void
.end method
