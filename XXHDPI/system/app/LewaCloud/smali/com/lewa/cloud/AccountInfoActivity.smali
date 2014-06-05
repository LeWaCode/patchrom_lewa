.class public Lcom/lewa/cloud/AccountInfoActivity;
.super Landroid/app/Activity;
.source "AccountInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;,
        Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;
    }
.end annotation


# static fields
.field public static final MSG_UPDATE_ACCOUNT_INFO:I = 0x3e8

.field public static final TAG:Ljava/lang/String;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mDate:I

.field private mItemAdapter:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

.field private mItemList:Landroid/widget/ListView;

.field private mMonth:I

.field private mNickName:Ljava/lang/String;

.field private mNickNameComponent:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;

.field private mSyncResultHandler:Landroid/os/Handler;

.field private mUserImg:Landroid/graphics/drawable/Drawable;

.field private mUserImgComponent:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/lewa/cloud/AccountInfoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/AccountInfoActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 236
    new-instance v0, Lcom/lewa/cloud/AccountInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/AccountInfoActivity$1;-><init>(Lcom/lewa/cloud/AccountInfoActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mSyncResultHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/AccountInfoActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/AccountInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lewa/cloud/AccountInfoActivity;->dealwithNetworkDisconnection()V

    return-void
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private setAccountImg()Z
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getAccountImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mUserImg:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mUserImg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mUserImgComponent:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity;->mUserImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAccountNickname()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getAccountNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mNickName:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mNickName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mNickNameComponent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/AccountInfoActivity;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->finish()V

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 103
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lewa/cloud/AccountInfoActivity$AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->setContentView(I)V

    .line 60
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mUserImgComponent:Landroid/widget/ImageView;

    .line 61
    const v2, 0x7f0a0005

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mNickNameComponent:Landroid/widget/TextView;

    .line 62
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mSummary:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mSummary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemList:Landroid/widget/ListView;

    .line 65
    new-instance v2, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    invoke-direct {v2, p0, p0}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;-><init>(Lcom/lewa/cloud/AccountInfoActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemAdapter:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    .line 66
    iget-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemAdapter:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 70
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 73
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/AccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, log_out:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v2, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 76
    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v2}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 77
    invoke-direct {p0}, Lcom/lewa/cloud/AccountInfoActivity;->setAccountImg()Z

    .line 78
    invoke-direct {p0}, Lcom/lewa/cloud/AccountInfoActivity;->setAccountNickname()Z

    .line 79
    new-instance v2, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/lewa/cloud/AccountInfoActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 80
    iget-object v2, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v3, Lcom/lewa/cloud/AccountInfoActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 81
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->updateAccountInfo()Z

    .line 82
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->onBackPressed()V

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 89
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->refresh()V

    .line 90
    return-void
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getUsedMonth()I

    move-result v3

    iput v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mMonth:I

    .line 152
    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getUsedDay()I

    move-result v3

    iput v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mDate:I

    .line 153
    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemAdapter:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    iget-object v2, v3, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->mItems:Ljava/util/List;

    .line 154
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;

    .line 155
    .local v1, item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    iget v3, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mPicId:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 167
    :sswitch_0
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v5}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallLogStoreNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    goto :goto_0

    .line 157
    :sswitch_1
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v5}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getContactStoreNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    goto :goto_0

    .line 162
    :sswitch_2
    invoke-virtual {p0}, Lcom/lewa/cloud/AccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v5}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getSmsStoreNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;->mInfo:Ljava/lang/String;

    goto :goto_0

    .line 173
    .end local v1           #item:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter$ItemInfo;
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/AccountInfoActivity;->mItemAdapter:Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;

    invoke-virtual {v3}, Lcom/lewa/cloud/AccountInfoActivity$ItemAdapter;->notifyDataSetChanged()V

    .line 174
    return-void

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x7f02000f -> :sswitch_0
        0x7f020013 -> :sswitch_1
        0x7f020017 -> :sswitch_2
    .end sparse-switch
.end method

.method public updateAccountInfo()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lewa/cloud/AccountInfoActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateAccountInfo()Z

    move-result v0

    return v0
.end method
