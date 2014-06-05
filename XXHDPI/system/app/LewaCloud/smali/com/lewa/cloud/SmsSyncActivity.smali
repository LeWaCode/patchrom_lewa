.class public Lcom/lewa/cloud/SmsSyncActivity;
.super Landroid/app/Activity;
.source "SmsSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

.field private MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mHelpInfo:Landroid/widget/TextView;

.field private mLastSyncInfo:Landroid/widget/TextView;

.field private mLastSyncType:I

.field private mLocalInfo:Landroid/widget/TextView;

.field private mLocalNum:Ljava/lang/Integer;

.field private mLocalTitle:Landroid/widget/TextView;

.field private mRemoteInfo:Landroid/widget/TextView;

.field private mRemoteNum:Ljava/lang/Integer;

.field private mRemoteTitle:Landroid/widget/TextView;

.field private mSyncDate:Ljava/lang/String;

.field private mSyncResultHandler:Landroid/os/Handler;

.field private mSyncTOLocal:Landroid/widget/Button;

.field private mSyncToCloud:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/lewa/cloud/SmsSyncActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/SmsSyncActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalNum:Ljava/lang/Integer;

    .line 36
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteNum:Ljava/lang/Integer;

    .line 197
    new-instance v0, Lcom/lewa/cloud/SmsSyncActivity$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/SmsSyncActivity$1;-><init>(Lcom/lewa/cloud/SmsSyncActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/SmsSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/SmsSyncActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->refresh()V

    return-void
.end method

.method static synthetic access$200(Lcom/lewa/cloud/SmsSyncActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->dealwithNetworkDisconnection()V

    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 195
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->refreshSmsSyncDate()Z

    .line 185
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->refreshSmsLocal()Z

    .line 186
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->refreshSmsRemote()Z

    .line 187
    return-void
.end method

.method private refreshSmsLocal()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsLocalNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalNum:Ljava/lang/Integer;

    .line 173
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalNum:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method private refreshSmsRemote()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsStoreNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteNum:Ljava/lang/Integer;

    .line 179
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteNum:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method private updateSmsSyncRecordData()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateSmsSyncRecordData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->finish()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 106
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 107
    .local v0, button:Landroid/widget/Button;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const-string v2, "direction"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Lcom/lewa/cloud/SmsSyncActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :pswitch_1
    const-string v2, "direction"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v1}, Lcom/lewa/cloud/SmsSyncActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x7f0a0011
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const v10, 0x7f06001c

    const/4 v9, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v5, 0x7f030004

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 53
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 57
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, head:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 60
    .local v2, loc:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .local v4, sync:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v5, 0x7f0a0036

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 64
    .local v3, remote:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 66
    const v5, 0x7f0a0031

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    .line 67
    const v5, 0x7f0a0034

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalTitle:Landroid/widget/TextView;

    .line 68
    const v5, 0x7f0a0035

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    .line 69
    const v5, 0x7f0a001b

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteTitle:Landroid/widget/TextView;

    .line 70
    const v5, 0x7f0a0037

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    .line 71
    const v5, 0x7f0a0011

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    .line 72
    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v5, 0x7f0a0012

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    .line 74
    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 83
    const v5, 0x7f0a000c

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/SmsSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    .line 84
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 85
    new-instance v5, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v6, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v5, Lcom/lewa/cloud/SmsSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 86
    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v6, Lcom/lewa/cloud/SmsSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v5, v6}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 87
    const/4 v5, -0x1

    iput v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncType:I

    .line 88
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->updateSmsSyncRecordData()Z

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->onBackPressed()V

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->refresh()V

    .line 95
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 97
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 100
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsSyncHelpInfo()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public refreshSmsSyncDate()Z
    .locals 7

    .prologue
    const v6, 0x7f070027

    const v5, 0x7f070026

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsSyncDateState:I

    iput v2, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncType:I

    .line 168
    :goto_0
    return v1

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsSyncDateState:I

    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-ne v3, v1, :cond_2

    .line 151
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move v1, v2

    .line 157
    goto :goto_0

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    :cond_3
    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsSyncDateState:I

    iput v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncType:I

    .line 162
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mSmsSyncDateState:I

    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-ne v3, v1, :cond_4

    .line 163
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_4
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lewa/cloud/SmsSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
