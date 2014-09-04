.class Llewa/laml/ActionCommand$ExternCommand;
.super Llewa/laml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Llewa/laml/data/Expression;

.field private mStrParaExp:Llewa/laml/data/Expression;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "root"
    .parameter "ele"

    .prologue
    .line 991
    invoke-direct {p0, p1}, Llewa/laml/ActionCommand;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 992
    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 993
    const-string v0, "numPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$ExternCommand;->mNumParaExp:Llewa/laml/data/Expression;

    .line 994
    const-string v0, "strPara"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/ActionCommand$ExternCommand;->mStrParaExp:Llewa/laml/data/Expression;

    .line 995
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 984
    iget-object v1, p0, Llewa/laml/ActionCommand$ExternCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v0, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 985
    .local v0, v:Llewa/laml/data/Variables;
    iget-object v3, p0, Llewa/laml/ActionCommand$ExternCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    iget-object v4, p0, Llewa/laml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    iget-object v1, p0, Llewa/laml/ActionCommand$ExternCommand;->mNumParaExp:Llewa/laml/data/Expression;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    iget-object v5, p0, Llewa/laml/ActionCommand$ExternCommand;->mStrParaExp:Llewa/laml/data/Expression;

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Llewa/laml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 988
    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Llewa/laml/ActionCommand$ExternCommand;->mNumParaExp:Llewa/laml/data/Expression;

    invoke-virtual {v1, v0}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Llewa/laml/ActionCommand$ExternCommand;->mStrParaExp:Llewa/laml/data/Expression;

    invoke-virtual {v2, v0}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
