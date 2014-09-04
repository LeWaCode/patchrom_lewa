.class Llewa/laml/ActionCommand$VariableAssignmentCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mExpression:Llewa/laml/data/Expression;

.field private mNumVariable:Llewa/laml/util/IndexedNumberVariable;

.field private mStrVariable:Llewa/laml/util/IndexedStringVariable;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 921
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 922
    const-string v4, "name"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, name:Ljava/lang/String;
    const-string v4, "expression"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, expression:Ljava/lang/String;
    const-string v4, "type"

    invoke-interface {p2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 925
    .local v2, type:Ljava/lang/String;
    new-instance v3, Llewa/laml/util/Variable;

    invoke-direct {v3, v1}, Llewa/laml/util/Variable;-><init>(Ljava/lang/String;)V

    .line 926
    .local v3, v:Llewa/laml/util/Variable;
    const-string v4, "string"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 927
    new-instance v4, Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v3}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v4, v5, v6, v7}, Llewa/laml/util/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v4, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Llewa/laml/util/IndexedStringVariable;

    .line 932
    :goto_0
    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mExpression:Llewa/laml/data/Expression;

    .line 933
    iget-object v4, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mExpression:Llewa/laml/data/Expression;

    if-nez v4, :cond_0

    .line 934
    const-string v4, "ActionCommand"

    const-string v5, "invalid expression in VariableAssignmentCommand"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    return-void

    .line 930
    :cond_1
    new-instance v4, Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v3}, Llewa/laml/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Llewa/laml/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-direct {v4, v5, v6, v7}, Llewa/laml/util/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    iput-object v4, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Llewa/laml/util/IndexedNumberVariable;

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mExpression:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Llewa/laml/util/IndexedNumberVariable;

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mNumVariable:Llewa/laml/util/IndexedNumberVariable;

    iget-object v1, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mExpression:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Llewa/laml/util/IndexedStringVariable;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mStrVariable:Llewa/laml/util/IndexedStringVariable;

    iget-object v1, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mExpression:Llewa/laml/data/Expression;

    iget-object v2, p0, Llewa/laml/ActionCommand$VariableAssignmentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v2}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v1, v2}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_0
.end method
