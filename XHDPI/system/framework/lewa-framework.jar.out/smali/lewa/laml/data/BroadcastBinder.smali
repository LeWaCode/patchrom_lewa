.class public Llewa/laml/data/BroadcastBinder;
.super Llewa/laml/data/VariableBinder;
.source "BroadcastBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/laml/data/BroadcastBinder$Variable;
    }
.end annotation


# static fields
.field private static final DEBUGE:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "BroadcastBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "BroadcastBinder"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected volatile mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mTrigger:Llewa/laml/CommandTrigger;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/laml/data/BroadcastBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)V
    .locals 1
    .parameter "node"
    .parameter "root"

    .prologue
    .line 41
    invoke-direct {p0, p2}, Llewa/laml/data/VariableBinder;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Llewa/laml/data/BroadcastBinder$2;

    invoke-direct {v0, p0}, Llewa/laml/data/BroadcastBinder$2;-><init>(Llewa/laml/data/BroadcastBinder;)V

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-direct {p0, p1}, Llewa/laml/data/BroadcastBinder;->load(Lorg/w3c/dom/Element;)V

    .line 43
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    const-string v0, "BroadcastBinder"

    const-string v1, "ContentProviderBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mName:Ljava/lang/String;

    .line 51
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string v0, "BroadcastBinder"

    const-string v1, "no action in broadcast binder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no action in broadcast binder element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Llewa/laml/data/BroadcastBinder;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    iget-object v0, p0, Llewa/laml/data/VariableBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-static {p1, v0}, Llewa/laml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Llewa/laml/ScreenElementRoot;)Llewa/laml/CommandTrigger;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    .line 58
    invoke-direct {p0, p1}, Llewa/laml/data/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 60
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 63
    const-string v0, "Variable"

    new-instance v1, Llewa/laml/data/BroadcastBinder$1;

    invoke-direct {v1, p0}, Llewa/laml/data/BroadcastBinder$1;-><init>(Llewa/laml/data/BroadcastBinder;)V

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Llewa/laml/util/Utils$XmlTraverseListener;)V

    .line 70
    return-void
.end method

.method private updateVariables(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 73
    if-eqz p1, :cond_2

    .line 75
    const-string v5, "BroadcastBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVariables: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v5, p0, Llewa/laml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llewa/laml/data/BroadcastBinder$Variable;

    .line 77
    .local v1, v:Llewa/laml/data/BroadcastBinder$Variable;
    const-wide/16 v2, 0x0

    .line 78
    .local v2, value:D
    const/4 v4, 0x0

    .line 79
    .local v4, valueStr:Ljava/lang/String;
    invoke-virtual {v1}, Llewa/laml/data/BroadcastBinder$Variable;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    iget v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 98
    const-string v5, "BroadcastBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalide type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Llewa/laml/data/BroadcastBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%f"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 102
    :goto_1
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v5, v2, v3}, Llewa/laml/util/IndexedNumberVariable;->set(D)V

    .line 105
    :cond_0
    const-string v5, "BroadcastBinder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVariables: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name:%s type:%s value:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Llewa/laml/data/BroadcastBinder$Variable;->mName:Ljava/lang/String;

    aput-object v9, v8, v10

    iget v9, v1, Llewa/laml/data/BroadcastBinder$Variable;->mType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    iget-object v6, v1, Llewa/laml/data/BroadcastBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    if-nez v4, :cond_1

    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :goto_2
    invoke-virtual {v6, v5}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    goto :goto_2

    .line 86
    :pswitch_1
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v6, v1, Llewa/laml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-int v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-double v2, v5

    .line 87
    goto :goto_1

    .line 89
    :pswitch_2
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v6, v1, Llewa/laml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-long v6, v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-double v2, v5

    .line 90
    goto :goto_1

    .line 92
    :pswitch_3
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v6, v1, Llewa/laml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    double-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v5

    float-to-double v2, v5

    .line 93
    goto :goto_1

    .line 95
    :pswitch_4
    iget-object v5, v1, Llewa/laml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    iget-wide v6, v1, Llewa/laml/data/BroadcastBinder$Variable;->mDefNumberValue:D

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 96
    goto :goto_1

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #v:Llewa/laml/data/BroadcastBinder$Variable;
    .end local v2           #value:D
    .end local v4           #valueStr:Ljava/lang/String;
    :cond_2
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected addVariable(Llewa/laml/data/BroadcastBinder$Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->finish()V

    .line 121
    :cond_0
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->unregister()V

    .line 122
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->finish()V

    .line 123
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->init()V

    .line 131
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->init()V

    .line 133
    :cond_0
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->register()V

    .line 134
    return-void
.end method

.method protected onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "object"

    .prologue
    .line 137
    invoke-direct {p0, p2}, Llewa/laml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 138
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->perform()V

    .line 140
    :cond_0
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->requestUpdate()V

    .line 141
    return-void
.end method

.method protected onRegister()V
    .locals 4

    .prologue
    .line 151
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/laml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Llewa/laml/data/BroadcastBinder;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Llewa/laml/data/BroadcastBinder;->updateVariables(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Llewa/laml/data/BroadcastBinder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->pause()V

    .line 161
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->pause()V

    .line 163
    :cond_0
    return-void
.end method

.method protected register()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Llewa/laml/data/BroadcastBinder;->mRegistered:Z

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->onRegister()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/laml/data/BroadcastBinder;->mRegistered:Z

    .line 170
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Llewa/laml/data/VariableBinder;->resume()V

    .line 174
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Llewa/laml/data/BroadcastBinder;->mTrigger:Llewa/laml/CommandTrigger;

    invoke-virtual {v0}, Llewa/laml/CommandTrigger;->resume()V

    .line 176
    :cond_0
    return-void
.end method

.method protected unregister()V
    .locals 3

    .prologue
    .line 179
    iget-boolean v1, p0, Llewa/laml/data/BroadcastBinder;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Llewa/laml/data/BroadcastBinder;->onUnregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Llewa/laml/data/BroadcastBinder;->mRegistered:Z

    .line 187
    :cond_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "BroadcastBinder"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
