.class public Llewa/laml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

.field private mActionString:Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Llewa/laml/data/Expression;

.field private mPropertyCommand:Llewa/laml/ActionCommand$PropertyCommand;

.field private mRoot:Llewa/laml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v0, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0, p1, p2}, Llewa/laml/CommandTrigger;->load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 30
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;
    .locals 1
    .parameter "ele"
    .parameter "root"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Llewa/laml/CommandTrigger;

    invoke-direct {v0, p0, p1}, Llewa/laml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;
    .locals 1
    .parameter "parent"
    .parameter "root"

    .prologue
    .line 43
    const-string v0, "Trigger"

    invoke-static {p0, v0}, Llewa/laml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0, p1}, Llewa/laml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;

    move-result-object v0

    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 11
    .parameter "ele"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p1, :cond_8

    .line 48
    iput-object p2, p0, Llewa/laml/CommandTrigger;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 49
    const-string v9, "target"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, target:Ljava/lang/String;
    const-string v9, "property"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, property:Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 52
    .local v8, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p2, v9, v8}, Llewa/laml/ActionCommand$PropertyCommand;->create(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Llewa/laml/ActionCommand$PropertyCommand;

    move-result-object v9

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mPropertyCommand:Llewa/laml/ActionCommand$PropertyCommand;

    .line 56
    :cond_0
    const-string v9, "action"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, action:Ljava/lang/String;
    iput-object v1, p0, Llewa/laml/CommandTrigger;->mActionString:Ljava/lang/String;

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 59
    const-string v9, "down"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 60
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Down:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    .line 71
    :cond_1
    :goto_0
    const-string v9, "condition"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Llewa/laml/data/Expression;->build(Ljava/lang/String;)Llewa/laml/data/Expression;

    move-result-object v9

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mCondition:Llewa/laml/data/Expression;

    .line 72
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 73
    .local v5, nodelist:Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, j:I
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_1
    if-ge v4, v0, :cond_8

    .line 74
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 75
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 76
    .local v3, item:Lorg/w3c/dom/Element;
    invoke-static {v3, p2}, Llewa/laml/ActionCommand;->create(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/ActionCommand;

    move-result-object v2

    .line 77
    .local v2, command:Llewa/laml/ActionCommand;
    if-eqz v2, :cond_2

    .line 78
    iget-object v9, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v2           #command:Llewa/laml/ActionCommand;
    .end local v3           #item:Lorg/w3c/dom/Element;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 61
    .end local v0           #N:I
    .end local v4           #j:I
    .end local v5           #nodelist:Lorg/w3c/dom/NodeList;
    :cond_3
    const-string v9, "up"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 62
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Up:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 63
    :cond_4
    const-string v9, "double"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 64
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Double:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 65
    :cond_5
    const-string v9, "long"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 66
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Long:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 67
    :cond_6
    const-string v9, "cancel"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 68
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Cancel:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 70
    :cond_7
    sget-object v9, Llewa/laml/elements/ButtonScreenElement$ButtonAction;->Other:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    iput-object v9, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    goto :goto_0

    .line 83
    .end local v1           #action:Ljava/lang/String;
    .end local v6           #property:Ljava/lang/String;
    .end local v7           #target:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand;

    .line 87
    .local v0, cmd:Llewa/laml/ActionCommand;
    invoke-virtual {v0}, Llewa/laml/ActionCommand;->finish()V

    goto :goto_0

    .line 89
    .end local v0           #cmd:Llewa/laml/ActionCommand;
    :cond_0
    return-void
.end method

.method public getAction()Llewa/laml/elements/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Llewa/laml/CommandTrigger;->mAction:Llewa/laml/elements/ButtonScreenElement$ButtonAction;

    return-object v0
.end method

.method public getActionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Llewa/laml/CommandTrigger;->mActionString:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand;

    .line 101
    .local v0, cmd:Llewa/laml/ActionCommand;
    invoke-virtual {v0}, Llewa/laml/ActionCommand;->init()V

    goto :goto_0

    .line 103
    .end local v0           #cmd:Llewa/laml/ActionCommand;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand;

    .line 107
    .local v0, cmd:Llewa/laml/ActionCommand;
    invoke-virtual {v0}, Llewa/laml/ActionCommand;->pause()V

    goto :goto_0

    .line 109
    .end local v0           #cmd:Llewa/laml/ActionCommand;
    :cond_0
    return-void
.end method

.method public perform()V
    .locals 6

    .prologue
    .line 112
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCondition:Llewa/laml/data/Expression;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCondition:Llewa/laml/data/Expression;

    iget-object v3, p0, Llewa/laml/CommandTrigger;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v3}, Llewa/laml/ScreenElementRoot;->getVariables()Llewa/laml/data/Variables;

    move-result-object v3

    invoke-virtual {v2, v3}, Llewa/laml/data/Expression;->evaluate(Llewa/laml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 113
    :cond_0
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mPropertyCommand:Llewa/laml/ActionCommand$PropertyCommand;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mPropertyCommand:Llewa/laml/ActionCommand$PropertyCommand;

    invoke-virtual {v2}, Llewa/laml/ActionCommand$PropertyCommand;->perform()V

    .line 115
    :cond_1
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand;

    .line 116
    .local v0, cmd:Llewa/laml/ActionCommand;
    invoke-virtual {v0}, Llewa/laml/ActionCommand;->perform()V

    goto :goto_0

    .line 119
    .end local v0           #cmd:Llewa/laml/ActionCommand;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 122
    iget-object v2, p0, Llewa/laml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/ActionCommand;

    .line 123
    .local v0, cmd:Llewa/laml/ActionCommand;
    invoke-virtual {v0}, Llewa/laml/ActionCommand;->resume()V

    goto :goto_0

    .line 125
    .end local v0           #cmd:Llewa/laml/ActionCommand;
    :cond_0
    return-void
.end method
