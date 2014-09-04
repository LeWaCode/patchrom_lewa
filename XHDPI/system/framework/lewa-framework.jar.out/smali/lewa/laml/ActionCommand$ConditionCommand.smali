.class Llewa/laml/ActionCommand$ConditionCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Llewa/laml/ActionCommand;

.field private mCondition:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Llewa/laml/ActionCommand;Llewa/laml/data/Expression;)V
    .locals 1
    .parameter "command"
    .parameter "condition"

    .prologue
    .line 227
    invoke-virtual {p1}, Llewa/laml/ActionCommand;->getRoot()Llewa/laml/ScreenElementRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 228
    iput-object p1, p0, Llewa/laml/ActionCommand$ConditionCommand;->mCommand:Llewa/laml/ActionCommand;

    .line 229
    iput-object p2, p0, Llewa/laml/ActionCommand$ConditionCommand;->mCondition:Llewa/laml/data/Expression;

    .line 230
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Llewa/laml/ActionCommand$ConditionCommand;->mCondition:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/ActionCommand$ConditionCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p0, Llewa/laml/ActionCommand$ConditionCommand;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->perform()V

    .line 220
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Llewa/laml/ActionCommand$ConditionCommand;->mCommand:Llewa/laml/ActionCommand;

    invoke-virtual {v0}, Llewa/laml/ActionCommand;->init()V

    .line 224
    return-void
.end method
