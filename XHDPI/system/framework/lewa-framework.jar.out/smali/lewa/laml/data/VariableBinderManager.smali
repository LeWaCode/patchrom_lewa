.class public Llewa/laml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"

# interfaces
.implements Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Llewa/laml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/VariableBinder;",
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 24
    iput-object p2, p0, Llewa/laml/data/VariableBinderManager;->mRoot:Llewa/laml/ScreenElementRoot;

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0, p1, p2}, Llewa/laml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 27
    :cond_0
    return-void
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;Llewa/laml/data/VariableBinderManager;)Llewa/laml/data/VariableBinder;
    .locals 4
    .parameter "ele"
    .parameter "root"
    .parameter "m"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, tag:Ljava/lang/String;
    :try_start_0
    const-string v2, "ContentProviderBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    new-instance v2, Llewa/laml/data/ContentProviderBinder;

    invoke-direct {v2, p0, p1, p2}, Llewa/laml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 46
    :goto_0
    return-object v2

    .line 35
    :cond_0
    const-string v2, "WebServiceBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    new-instance v2, Llewa/laml/data/WebServiceBinder;

    invoke-direct {v2, p0, p1}, Llewa/laml/data/WebServiceBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    :try_end_0
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Llewa/laml/ScreenElementLoadException;
    const-string v2, "VariableBinderManager"

    invoke-virtual {v0}, Llewa/laml/ScreenElementLoadException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0           #e:Llewa/laml/ScreenElementLoadException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 37
    :cond_2
    :try_start_1
    const-string v2, "SensorBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    new-instance v2, Llewa/laml/data/SensorBinder;

    invoke-direct {v2, p0, p1}, Llewa/laml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 39
    :cond_3
    const-string v2, "BroadcastBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 40
    new-instance v2, Llewa/laml/data/BroadcastBinder;

    invoke-direct {v2, p0, p1}, Llewa/laml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    goto :goto_0

    .line 41
    :cond_4
    const-string v2, "FileBinder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    new-instance v2, Llewa/laml/data/FileBinder;

    invoke-direct {v2, p0, p1}, Llewa/laml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    :try_end_1
    .catch Llewa/laml/ScreenElementLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 2
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-direct {p0, p1, p2}, Llewa/laml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V

    .line 56
    return-void
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 7
    .parameter "node"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 61
    .local v1, children:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 62
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 63
    .local v3, n:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 64
    check-cast v3, Lorg/w3c/dom/Element;

    .end local v3           #n:Lorg/w3c/dom/Node;
    invoke-static {v3, p2, p0}, Llewa/laml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;Llewa/laml/data/VariableBinderManager;)Llewa/laml/data/VariableBinder;

    move-result-object v4

    .line 65
    .local v4, vb:Llewa/laml/data/VariableBinder;
    if-eqz v4, :cond_0

    .line 66
    iget-object v5, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v4           #vb:Llewa/laml/data/VariableBinder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method


# virtual methods
.method public addContentProviderBinder(Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uri"

    .prologue
    .line 73
    new-instance v0, Llewa/laml/util/TextFormatter;

    invoke-direct {v0, p1}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llewa/laml/data/VariableBinderManager;->addContentProviderBinder(Llewa/laml/util/TextFormatter;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 1
    .parameter "uriFormat"
    .parameter "uriParas"

    .prologue
    .line 77
    new-instance v0, Llewa/laml/util/TextFormatter;

    invoke-direct {v0, p1, p2}, Llewa/laml/util/TextFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Llewa/laml/data/VariableBinderManager;->addContentProviderBinder(Llewa/laml/util/TextFormatter;)Llewa/laml/data/ContentProviderBinder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContentProviderBinder(Llewa/laml/util/TextFormatter;)Llewa/laml/data/ContentProviderBinder$Builder;
    .locals 2
    .parameter "uri"

    .prologue
    .line 81
    new-instance v0, Llewa/laml/data/ContentProviderBinder;

    iget-object v1, p0, Llewa/laml/data/VariableBinderManager;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Llewa/laml/data/ContentProviderBinder;-><init>(Llewa/laml/ScreenElementRoot;Llewa/laml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 82
    .local v0, binder:Llewa/laml/data/ContentProviderBinder;
    iput-object p1, v0, Llewa/laml/data/ContentProviderBinder;->mUriFormatter:Llewa/laml/util/TextFormatter;

    .line 83
    iget-object v1, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Llewa/laml/data/ContentProviderBinder$Builder;

    invoke-direct {v1, v0}, Llewa/laml/data/ContentProviderBinder$Builder;-><init>(Llewa/laml/data/ContentProviderBinder;)V

    return-object v1
.end method

.method public findBinder(Ljava/lang/String;)Llewa/laml/data/VariableBinder;
    .locals 3
    .parameter "name"

    .prologue
    .line 88
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 89
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 96
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 97
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->finish()V

    goto :goto_0

    .line 99
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 103
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->init()V

    goto :goto_0

    .line 105
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v4, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 110
    .local v0, binder:Llewa/laml/data/VariableBinder;
    instance-of v4, v0, Llewa/laml/data/ContentProviderBinder;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 111
    check-cast v1, Llewa/laml/data/ContentProviderBinder;

    .line 112
    .local v1, cp:Llewa/laml/data/ContentProviderBinder;
    invoke-virtual {v1}, Llewa/laml/data/ContentProviderBinder;->getDependency()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, dependency:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v1}, Llewa/laml/data/ContentProviderBinder;->startQuery()V

    goto :goto_0

    .line 117
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    .end local v1           #cp:Llewa/laml/data/ContentProviderBinder;
    .end local v2           #dependency:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 121
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->pause()V

    goto :goto_0

    .line 123
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 133
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->refresh()V

    goto :goto_0

    .line 135
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 126
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 127
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->resume()V

    goto :goto_0

    .line 129
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method

.method public tick()V
    .locals 3

    .prologue
    .line 138
    iget-object v2, p0, Llewa/laml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/laml/data/VariableBinder;

    .line 139
    .local v0, binder:Llewa/laml/data/VariableBinder;
    invoke-virtual {v0}, Llewa/laml/data/VariableBinder;->tick()V

    goto :goto_0

    .line 141
    .end local v0           #binder:Llewa/laml/data/VariableBinder;
    :cond_0
    return-void
.end method
