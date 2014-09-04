.class Llewa/laml/ActionCommand$DataSwitchCommand;
.super Llewa/laml/ActionCommand$NotificationReceiver;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataSwitchCommand"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "Data"


# instance fields
.field private mApnEnable:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 2
    .parameter "root"
    .parameter "value"

    .prologue
    .line 267
    const-string v0, "data_state"

    sget-object v1, Llewa/laml/NotifierManager;->TYPE_MOBILE_DATA:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Llewa/laml/ActionCommand$NotificationReceiver;-><init>(Llewa/laml/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Llewa/laml/ActionCommand$OnOffCommandHelper;

    invoke-direct {v0, p2}, Llewa/laml/ActionCommand$OnOffCommandHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    .line 269
    return-void
.end method

.method private ensureConnectivityManager()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v0}, Llewa/laml/ScreenElementRoot;->getContext()Llewa/laml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    .line 247
    :cond_0
    iget-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doPerform()V
    .locals 2

    .prologue
    .line 251
    invoke-direct {p0}, Llewa/laml/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v1, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsToggle:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 253
    .local v0, flag:Z
    :goto_0
    iget-boolean v1, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eq v1, v0, :cond_0

    .line 254
    iget-object v1, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 257
    .end local v0           #flag:Z
    :cond_0
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mOnOffHelper:Llewa/laml/ActionCommand$OnOffCommandHelper;

    iget-boolean v0, v1, Llewa/laml/ActionCommand$OnOffCommandHelper;->mIsOn:Z

    goto :goto_0
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Llewa/laml/ActionCommand$DataSwitchCommand;->ensureConnectivityManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    .line 262
    iget-boolean v0, p0, Llewa/laml/ActionCommand$DataSwitchCommand;->mApnEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Llewa/laml/ActionCommand$DataSwitchCommand;->updateState(I)V

    .line 264
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
