.class public Lcom/lewa/cloud/CallSyncActivity;
.super Landroid/app/Activity;
.source "CallSyncActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MSG_REFRESH_CALLLOG:I = 0x3

.field public static final MSG_UPDATE_CALLLOG_ALL:I = 0x0

.field public static final MSG_UPDATE_CALLLOG_LOCAL:I = 0x1

.field public static final MSG_UPDATE_CALLLOG_REMOTE:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

.field private MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mDir:I

.field private mHelpInfo:Landroid/widget/TextView;

.field private mLastSyncInfo:Landroid/widget/TextView;

.field private mLastSyncType:I

.field private mLocalInfo:Landroid/widget/TextView;

.field private mLocalNum:I

.field private mLocalTitle:Landroid/widget/TextView;

.field private mPercent:Landroid/widget/TextView;

.field private mPercentFormat:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInfo:Landroid/widget/TextView;

.field private mRemoteNum:I

.field private mRemoteTitle:Landroid/widget/TextView;

.field private mSyncDate:Ljava/lang/String;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncResultHandler:Landroid/os/Handler;

.field private mSyncTOLocal:Landroid/widget/Button;

.field private mSyncToCloud:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/lewa/cloud/CallSyncActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/CallSyncActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 302
    new-instance v0, Lcom/lewa/cloud/CallSyncActivity$1;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/CallSyncActivity$1;-><init>(Lcom/lewa/cloud/CallSyncActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncHandler:Landroid/os/Handler;

    .line 319
    new-instance v0, Lcom/lewa/cloud/CallSyncActivity$2;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/CallSyncActivity$2;-><init>(Lcom/lewa/cloud/CallSyncActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/CallSyncActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/CallSyncActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lewa/cloud/CallSyncActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mPercentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lewa/cloud/CallSyncActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lewa/cloud/CallSyncActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->refresh()V

    return-void
.end method

.method static synthetic access$500(Lcom/lewa/cloud/CallSyncActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->dealwithNetworkDisconnection()V

    return-void
.end method

.method private contactSync(I)V
    .locals 6
    .parameter "direction"

    .prologue
    .line 160
    iput p1, p0, Lcom/lewa/cloud/CallSyncActivity;->mDir:I

    .line 161
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, info:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v3, 0x2

    move v4, p1

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;)V

    .line 170
    return-void

    .line 166
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #info:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .restart local v1       #title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #info:Ljava/lang/String;
    goto :goto_0
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private notifySync(Z)V
    .locals 14
    .parameter "sync"

    .prologue
    const/4 v13, 0x1

    .line 255
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v8, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 257
    .local v8, uid:I
    if-eqz p1, :cond_1

    .line 258
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 260
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 261
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 262
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 264
    .local v6, res:Landroid/content/res/Resources;
    iget v11, p0, Lcom/lewa/cloud/CallSyncActivity;->mDir:I

    if-ne v11, v13, :cond_0

    .line 265
    const v11, 0x7f07005c

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, body:Ljava/lang/CharSequence;
    :goto_0
    const v11, 0x7f070058

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 271
    .local v7, title:Ljava/lang/CharSequence;
    const v11, 0x7f020016

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 272
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 275
    .local v9, when:J
    new-instance v4, Landroid/widget/RemoteViews;

    const v11, 0x7f030008

    invoke-direct {v4, v5, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 276
    .local v4, contentView:Landroid/widget/RemoteViews;
    const/high16 v11, 0x7f0a

    const v12, 0x7f020016

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 277
    const v11, 0x7f0a0001

    invoke-virtual {v4, v11, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    const v11, 0x7f0a001e

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 279
    const v11, 0x7f0a001d

    const-string v12, "kk:mm"

    invoke-static {v12, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/lewa/cloud/CallSyncActivity;

    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v2, click:Landroid/content/Intent;
    const/high16 v11, 0x800

    invoke-static {p0, v8, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 288
    .local v3, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 290
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/CallSyncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 300
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v2           #click:Landroid/content/Intent;
    .end local v3           #contentIntent:Landroid/app/PendingIntent;
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #title:Ljava/lang/CharSequence;
    .end local v8           #uid:I
    .end local v9           #when:J
    :goto_1
    return-void

    .line 268
    .restart local v1       #builder:Landroid/app/Notification$Builder;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v8       #uid:I
    :cond_0
    const v11, 0x7f07005d

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/CharSequence;
    goto :goto_0

    .line 294
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/CallSyncActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v11, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    .end local v5           #packageName:Ljava/lang/String;
    .end local v8           #uid:I
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method private refresh()V
    .locals 0

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->refreshContactSyncDate()Z

    .line 221
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->refreshCallLogLocal()Z

    .line 222
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->refreshCallLogRemote()Z

    .line 223
    return-void
.end method

.method private refreshCallLogLocal()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallLogLocalNum()I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mLocalNum:I

    .line 209
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    iget v1, p0, Lcom/lewa/cloud/CallSyncActivity;->mLocalNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method private refreshCallLogRemote()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallLogStoreNum()I

    move-result v0

    iput v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mRemoteNum:I

    .line 215
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    iget v1, p0, Lcom/lewa/cloud/CallSyncActivity;->mRemoteNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method private updateCallLogAll()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateCallLogData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endSync()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mPercent:Landroid/widget/TextView;

    .line 244
    iput-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/cloud/CallSyncActivity;->notifySync(Z)V

    .line 246
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->finish()V

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->dealwithNetworkDisconnection()V

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lewa/cloud/CallSyncActivity;->contactSync(I)V

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/cloud/CallSyncActivity;->contactSync(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const v10, 0x7f06001c

    const/4 v9, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v5, 0x7f030004

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 73
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 74
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 75
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    const v5, 0x7f0a0030

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, head:Landroid/view/View;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 81
    .local v2, loc:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v5, 0x7f0a0032

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 83
    .local v4, sync:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    const v5, 0x7f0a0036

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 85
    .local v3, remote:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 87
    const v5, 0x7f0a0031

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    .line 88
    const v5, 0x7f0a0034

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mLocalTitle:Landroid/widget/TextView;

    .line 89
    const v5, 0x7f0a0035

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mLocalInfo:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f0a001b

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mRemoteTitle:Landroid/widget/TextView;

    .line 91
    const v5, 0x7f0a0037

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mRemoteInfo:Landroid/widget/TextView;

    .line 92
    const v5, 0x7f0a0011

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    .line 93
    const v5, 0x7f0a0012

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    .line 94
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 104
    const v5, 0x7f0a000c

    invoke-virtual {p0, v5}, Lcom/lewa/cloud/CallSyncActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    .line 105
    sget-object v5, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v5, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 106
    new-instance v5, Lcom/lewa/cloud/manager/SyncProcessorObsv;

    iget-object v6, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/lewa/cloud/manager/SyncProcessorObsv;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v5, Lcom/lewa/cloud/CallSyncActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 107
    new-instance v5, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v6, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v5, v6}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v5, Lcom/lewa/cloud/CallSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 108
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v6, Lcom/lewa/cloud/CallSyncActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    invoke-virtual {v5, v6}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setProgressObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V

    .line 109
    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v6, Lcom/lewa/cloud/CallSyncActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v5, v6}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 110
    const/4 v5, -0x1

    iput v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncType:I

    .line 111
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->updateCallLogAll()Z

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->onBackPressed()V

    .line 151
    const/4 v0, 0x1

    .line 153
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

    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->refresh()V

    .line 118
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 120
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncToCloud:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallUpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncTOLocal:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity;->MSyncSmallDownIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mHelpInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v1}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallSyncHelpInfo()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 251
    return-void
.end method

.method public refreshContactSyncDate()Z
    .locals 7

    .prologue
    const v6, 0x7f070027

    const v5, 0x7f070026

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->getCallLogSyncTimeInfo()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, date:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 179
    invoke-direct {p0}, Lcom/lewa/cloud/CallSyncActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v2, v2, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mCallsSyncDateState:I

    iput v2, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncType:I

    .line 204
    :goto_0
    return v1

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mCallsSyncDateState:I

    iget-object v4, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-ne v3, v1, :cond_2

    .line 187
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move v1, v2

    .line 193
    goto :goto_0

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 196
    :cond_3
    iput-object v0, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    .line 197
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mCallsSyncDateState:I

    iput v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncType:I

    .line 198
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, v3, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->mCallsSyncDateState:I

    iget-object v4, p0, Lcom/lewa/cloud/CallSyncActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    if-ne v3, v1, :cond_4

    .line 199
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :cond_4
    iget-object v3, p0, Lcom/lewa/cloud/CallSyncActivity;->mLastSyncInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/lewa/cloud/CallSyncActivity;->mSyncDate:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public startSync(Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V
    .locals 11
    .parameter "percent"
    .parameter "progress"
    .parameter "dialog"
    .parameter "type"
    .parameter "direction"
    .parameter "byTime"
    .parameter "syncAll"
    .parameter "syncDuration"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/lewa/cloud/CallSyncActivity;->mPercent:Landroid/widget/TextView;

    .line 235
    iput-object p2, p0, Lcom/lewa/cloud/CallSyncActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 236
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/CallSyncActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/CallSyncActivity;->mPercentFormat:Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/lewa/cloud/task/SyncDataTask;

    invoke-virtual {p0}, Lcom/lewa/cloud/CallSyncActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/lewa/cloud/task/SyncDataTask;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/app/AlertDialog;IIZZI)V

    .line 238
    .local v0, syncTask:Lcom/lewa/cloud/task/SyncDataTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/task/SyncDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/cloud/CallSyncActivity;->notifySync(Z)V

    .line 240
    return-void
.end method
