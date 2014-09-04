.class public Llewa/laml/NotifierManager$BroadcastNotifier;
.super Llewa/laml/NotifierManager$BaseNotifier;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastNotifier"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Llewa/laml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Llewa/laml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Llewa/laml/NotifierManager$BroadcastNotifier$1;-><init>(Llewa/laml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "action"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Llewa/laml/NotifierManager$BaseNotifier;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Llewa/laml/NotifierManager$BroadcastNotifier$1;

    invoke-direct {v0, p0}, Llewa/laml/NotifierManager$BroadcastNotifier$1;-><init>(Llewa/laml/NotifierManager$BroadcastNotifier;)V

    iput-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    iput-object p2, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method protected createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BroadcastNotifier;->getIntentAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method protected onRegister()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Llewa/laml/NotifierManager$BroadcastNotifier;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    .line 238
    :cond_0
    iget-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    return-void
.end method

.method protected onUnregister()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Llewa/laml/NotifierManager$BroadcastNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    return-void
.end method
