.class public Llewa/laml/ExternalCommandManager;
.super Ljava/lang/Object;
.source "ExternalCommandManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ExternalCommandManager"

.field public static final TAG_NAME:Ljava/lang/String; = "ExternalCommands"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-direct {p0, p1, p2}, Llewa/laml/ExternalCommandManager;->load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 21
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 5
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const-string v3, "ExternalCommandManager"

    const-string v4, "node is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v3, Llewa/laml/ScreenElementLoadException;

    const-string v4, "node is null"

    invoke-direct {v3, v4}, Llewa/laml/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 30
    .local v0, children:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 31
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 32
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 33
    .local v2, item:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Trigger"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    iget-object v3, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    new-instance v4, Llewa/laml/CommandTrigger;

    invoke-direct {v4, v2, p2}, Llewa/laml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v2           #item:Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 41
    .local v1, t:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->finish()V

    goto :goto_0

    .line 42
    .end local v1           #t:Llewa/laml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 46
    .local v1, t:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->init()V

    goto :goto_0

    .line 47
    .end local v1           #t:Llewa/laml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 3
    .parameter "command"

    .prologue
    .line 50
    iget-object v2, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 51
    .local v1, t:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->getActionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->perform()V

    goto :goto_0

    .line 53
    .end local v1           #t:Llewa/laml/CommandTrigger;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 57
    .local v1, t:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->pause()V

    goto :goto_0

    .line 58
    .end local v1           #t:Llewa/laml/CommandTrigger;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 61
    iget-object v2, p0, Llewa/laml/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/CommandTrigger;

    .line 62
    .local v1, t:Llewa/laml/CommandTrigger;
    invoke-virtual {v1}, Llewa/laml/CommandTrigger;->resume()V

    goto :goto_0

    .line 63
    .end local v1           #t:Llewa/laml/CommandTrigger;
    :cond_0
    return-void
.end method
