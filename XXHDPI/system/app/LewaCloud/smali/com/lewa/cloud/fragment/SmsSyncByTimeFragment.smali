.class public Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;
.super Landroid/app/Fragment;
.source "SmsSyncByTimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mConversationSelectedNum:I

.field private mLastHalfYearButton:Landroid/widget/RadioButton;

.field private mLastHalfYearNum:I

.field private mLastHalfYearStr:Ljava/lang/String;

.field private mLastMonthButton:Landroid/widget/RadioButton;

.field private mLastMonthNum:I

.field private mLastMonthStr:Ljava/lang/String;

.field private mLastThreeMonthButton:Landroid/widget/RadioButton;

.field private mLastThreeMonthNum:I

.field private mLastThreeMonthStr:Ljava/lang/String;

.field private mLastYearButton:Landroid/widget/RadioButton;

.field private mLastYearNum:I

.field private mLastYearStr:Ljava/lang/String;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsSelectedNum:I

.field private mSyncAllButton:Landroid/widget/RadioButton;

.field private mSyncAllNum:I

.field private mSyncAllStr:Ljava/lang/String;

.field private mTimeDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthStr:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthStr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthStr:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthStr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearStr:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearStr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearStr:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearStr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllStr:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllStr:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 109
    :pswitch_0
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick: last_month_button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 113
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v0, 0x1

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 114
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick: last_three_month_button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 122
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v0, 0x2

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 123
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    goto :goto_0

    .line 127
    :pswitch_2
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick: last_half_year_button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 131
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v0, 0x3

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 132
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    goto :goto_0

    .line 136
    :pswitch_3
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick: last_year_button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 140
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v0, 0x4

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 141
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    goto :goto_0

    .line 145
    :pswitch_4
    sget-object v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->TAG:Ljava/lang/String;

    const-string v1, "onClick: sync_all_button"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 149
    iget-object v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    const/4 v0, 0x5

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 150
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f0a0021
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 59
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthButton:Landroid/widget/RadioButton;

    .line 60
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthButton:Landroid/widget/RadioButton;

    .line 63
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearButton:Landroid/widget/RadioButton;

    .line 65
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearButton:Landroid/widget/RadioButton;

    .line 67
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllButton:Landroid/widget/RadioButton;

    .line 69
    iget-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget-object v1, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v1}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 71
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 102
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 96
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->refresh()V

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 81
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 86
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;>;"
    iput-object p1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mList:Ljava/util/List;

    .line 178
    return-void
.end method

.method public setNum(Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;)V
    .locals 1
    .parameter "num"

    .prologue
    .line 181
    iget v0, p1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthNum:I

    .line 182
    iget v0, p1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastThreeMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthNum:I

    .line 183
    iget v0, p1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastSixMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearNum:I

    .line 184
    iget v0, p1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mLastYearNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearNum:I

    .line 185
    iget v0, p1, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;->mAllNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllNum:I

    .line 186
    invoke-direct {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->refresh()V

    .line 187
    return-void
.end method

.method public switchRefresh()V
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    packed-switch v0, :pswitch_data_0

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    .line 213
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->updateSelectNum()Z

    .line 218
    return-void

    .line 192
    :pswitch_0
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    goto :goto_0

    .line 196
    :pswitch_1
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastThreeMonthNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    goto :goto_0

    .line 200
    :pswitch_2
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastHalfYearNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    goto :goto_0

    .line 204
    :pswitch_3
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mLastYearNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    goto :goto_0

    .line 208
    :pswitch_4
    iget v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSyncAllNum:I

    iput v0, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateSelectNum()Z
    .locals 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lewa/cloud/SmsSyncDetailActivity;

    iget v1, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mConversationSelectedNum:I

    iget v2, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mSmsSelectedNum:I

    iget v3, p0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->mTimeDuration:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNumByTime(III)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method
