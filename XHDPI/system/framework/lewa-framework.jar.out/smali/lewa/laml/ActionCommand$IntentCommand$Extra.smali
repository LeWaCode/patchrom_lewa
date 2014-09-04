.class Llewa/laml/ActionCommand$IntentCommand$Extra;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand$IntentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Extra"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Extra"


# instance fields
.field private mCondition:Llewa/laml/data/Expression;

.field private mExpression:Llewa/laml/data/Expression;

.field private mName:Ljava/lang/String;

.field protected mType:Llewa/laml/ActionCommand$IntentCommand$Type;

.field final synthetic this$0:Llewa/laml/ActionCommand$IntentCommand;


# direct methods
.method public constructor <init>(Llewa/laml/ActionCommand$IntentCommand;Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter
    .parameter "paramElement"

    .prologue
    .line 425
    iput-object p1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    sget-object v0, Llewa/laml/ActionCommand$IntentCommand$Type;->DOUBLE:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 426
    invoke-direct {p0, p2}, Llewa/laml/ActionCommand$IntentCommand$Extra;->load(Lorg/w3c/dom/Element;)V

    .line 427
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "paramElement"

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    const-string v1, "ActionCommand"

    const-string v2, "node is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mName:Ljava/lang/String;

    .line 435
    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, str:Ljava/lang/String;
    sget-object v1, Llewa/laml/ActionCommand$IntentCommand$Type;->DOUBLE:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 438
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    sget-object v1, Llewa/laml/ActionCommand$IntentCommand$Type;->STRING:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 441
    :cond_1
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    :cond_2
    sget-object v1, Llewa/laml/ActionCommand$IntentCommand$Type;->INT:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 444
    :cond_3
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 445
    sget-object v1, Llewa/laml/ActionCommand$IntentCommand$Type;->LONG:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 447
    :cond_4
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 448
    sget-object v1, Llewa/laml/ActionCommand$IntentCommand$Type;->FLOAT:Llewa/laml/ActionCommand$IntentCommand$Type;

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mType:Llewa/laml/ActionCommand$IntentCommand$Type;

    .line 450
    :cond_5
    const-string v1, "expression"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    .line 451
    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    if-nez v1, :cond_6

    .line 452
    const-string v1, "ActionCommand"

    const-string v2, "invalid expression in IntentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_6
    const-string v1, "condition"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mCondition:Llewa/laml/data/Expression;

    goto :goto_0
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 458
    const-wide/16 v0, 0x0

    .line 459
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    iget-object v1, v1, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mExpression:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    iget-object v1, v1, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluateStr(Llewa/laml/data/Variables;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isConditionTrue()Z
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mCondition:Llewa/laml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->mCondition:Llewa/laml/data/Expression;

    iget-object v1, p0, Llewa/laml/ActionCommand$IntentCommand$Extra;->this$0:Llewa/laml/ActionCommand$IntentCommand;

    iget-object v1, v1, Llewa/laml/ActionCommand$IntentCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    invoke-virtual {v0, v1}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
