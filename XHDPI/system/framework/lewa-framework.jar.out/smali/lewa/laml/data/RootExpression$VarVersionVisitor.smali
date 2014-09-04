.class Llewa/laml/data/RootExpression$VarVersionVisitor;
.super Llewa/laml/data/ExpressionVisitor;
.source "RootExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/RootExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VarVersionVisitor"
.end annotation


# instance fields
.field private mRoot:Llewa/laml/data/RootExpression;

.field private mVar:Llewa/laml/data/Variables;


# direct methods
.method public constructor <init>(Llewa/laml/data/RootExpression;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "root"
    .parameter "var"

    .prologue
    .line 148
    invoke-direct {p0}, Llewa/laml/data/ExpressionVisitor;-><init>()V

    .line 149
    iput-object p1, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mRoot:Llewa/laml/data/RootExpression;

    .line 150
    iput-object p2, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mVar:Llewa/laml/data/Variables;

    .line 151
    return-void
.end method


# virtual methods
.method public visit(Llewa/laml/data/Expression$FunctionExpression;)V
    .locals 2
    .parameter "exp"

    .prologue
    .line 166
    const-string v0, "rand"

    invoke-virtual {p1}, Llewa/laml/data/Expression$FunctionExpression;->getFunName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mRoot:Llewa/laml/data/RootExpression;

    const/4 v1, 0x1

    #setter for: Llewa/laml/data/RootExpression;->mAlwaysEvaluate:Z
    invoke-static {v0, v1}, Llewa/laml/data/RootExpression;->access$002(Llewa/laml/data/RootExpression;Z)Z

    .line 168
    :cond_0
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$NumberVariableExpression;)V
    .locals 5
    .parameter "exp"

    .prologue
    .line 154
    iget-object v0, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mVar:Llewa/laml/data/Variables;

    invoke-virtual {p1, v0}, Llewa/laml/data/Expression$NumberVariableExpression;->evaluate(Llewa/laml/data/Variables;)D

    .line 155
    iget-object v0, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mRoot:Llewa/laml/data/RootExpression;

    new-instance v1, Llewa/laml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Llewa/laml/data/Expression$NumberVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Llewa/laml/data/Expression$NumberVariableExpression;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/data/RootExpression$VarVersion;-><init>(III)V

    invoke-virtual {v0, v1}, Llewa/laml/data/RootExpression;->addVarVersion(Llewa/laml/data/RootExpression$VarVersion;)V

    .line 157
    return-void
.end method

.method public visit(Llewa/laml/data/Expression$StringVariableExpression;)V
    .locals 5
    .parameter "exp"

    .prologue
    .line 160
    iget-object v0, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mVar:Llewa/laml/data/Variables;

    invoke-virtual {p1, v0}, Llewa/laml/data/Expression$StringVariableExpression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    .line 161
    iget-object v0, p0, Llewa/laml/data/RootExpression$VarVersionVisitor;->mRoot:Llewa/laml/data/RootExpression;

    new-instance v1, Llewa/laml/data/RootExpression$VarVersion;

    invoke-virtual {p1}, Llewa/laml/data/Expression$StringVariableExpression;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Llewa/laml/data/Expression$StringVariableExpression;->getVersion()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Llewa/laml/data/RootExpression$VarVersion;-><init>(III)V

    invoke-virtual {v0, v1}, Llewa/laml/data/RootExpression;->addVarVersion(Llewa/laml/data/RootExpression$VarVersion;)V

    .line 163
    return-void
.end method
