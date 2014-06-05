.class public Lcom/lewa/cloud/PrimCloudActivity;
.super Landroid/app/Activity;
.source "PrimCloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/PrimCloudActivity$AutoSyncTask;
    }
.end annotation


# static fields
.field private static final CHECK_TIME_DURATION:I = 0xea60

.field private static final MSG_BACKGROUND_AUTOSYNC:I = 0x1

.field private static final MSG_BACKGROUND_AUTOSYNC_FINISH:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;


# instance fields
.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field public mConfigHandler:Landroid/os/Handler;

.field private mNickName:Landroid/widget/TextView;

.field public mSyncHandler:Landroid/os/Handler;

.field private mUserInfo:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/lewa/cloud/LogInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/PrimCloudActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 121
    new-instance v0, Lcom/lewa/cloud/PrimCloudActivity$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/PrimCloudActivity$1;-><init>(Lcom/lewa/cloud/PrimCloudActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/lewa/cloud/PrimCloudActivity$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/PrimCloudActivity$2;-><init>(Lcom/lewa/cloud/PrimCloudActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity;->mSyncHandler:Landroid/os/Handler;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/PrimCloudActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lewa/cloud/PrimCloudActivity;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/PrimCloudActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/lewa/cloud/PrimCloudActivity;->setContentView(I)V

    .line 72
    const v3, 0x7f0a0013

    invoke-virtual {p0, v3}, Lcom/lewa/cloud/PrimCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mUserInfo:Landroid/widget/ImageButton;

    .line 73
    iget-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mUserInfo:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v3, 0x7f0a0005

    invoke-virtual {p0, v3}, Lcom/lewa/cloud/PrimCloudActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mNickName:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Lcom/lewa/cloud/PrimCloudActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 76
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 77
    .local v2, fragmentTransaction:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/lewa/cloud/fragment/ConfigFragment;

    iget-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mUserInfo:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/lewa/cloud/PrimCloudActivity;->mNickName:Landroid/widget/TextView;

    invoke-direct {v0, v3, v4}, Lcom/lewa/cloud/fragment/ConfigFragment;-><init>(Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    .line 78
    .local v0, fragment:Lcom/lewa/cloud/fragment/ConfigFragment;
    const v3, 0x7f0a0014

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 79
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 80
    sget-object v3, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v3, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 81
    sget-object v3, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v3}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v3

    iput-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 82
    new-instance v3, Lcom/lewa/cloud/manager/SyncProcessorObsv;

    iget-object v4, p0, Lcom/lewa/cloud/PrimCloudActivity;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/lewa/cloud/manager/SyncProcessorObsv;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v3, Lcom/lewa/cloud/PrimCloudActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 83
    iget-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v4, Lcom/lewa/cloud/PrimCloudActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    invoke-virtual {v3, v4}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setAutoSyncContactObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V

    .line 84
    iget-object v3, p0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/lewa/cloud/PrimCloudActivity;->mConfigHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 105
    invoke-virtual {p0}, Lcom/lewa/cloud/PrimCloudActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 106
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 107
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 114
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lewa/cloud/AccountInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/PrimCloudActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0008
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    return-void
.end method
