.class public Lcom/lewa/cloud/SmsSyncDetailActivity;
.super Landroid/app/Activity;
.source "SmsSyncDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;,
        Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;,
        Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final FRAGMENTS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAB_INDEX_COUNT:I

.field public static final TAG:Ljava/lang/String;

.field private static mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

.field private static mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;


# instance fields
.field private mAllIsSelected:Z

.field private mByAllConversation:Z

.field private mByTime:Z

.field private mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

.field private mDir:I

.field private mHeadStrFormat:Ljava/lang/String;

.field private mHeader:Lcom/lewa/cloud/widget/PagerHeader;

.field private final mOnPageChangeListener:Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;

.field private mPercent:Landroid/widget/TextView;

.field private mPercentFormat:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectAll:Landroid/widget/ImageButton;

.field private mSelectCountTextView:Landroid/widget/TextView;

.field private mSelectedNum:I

.field public mSmsInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncButton:Landroid/widget/Button;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncMenu:Landroid/view/MenuItem;

.field private mSyncResultHandler:Landroid/os/Handler;

.field private mSyncText:Ljava/lang/String;

.field private mTimeDuration:I

.field private mUpdateNum:I

.field private mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;

.field private mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->FRAGMENTS:[Ljava/lang/Class;

    .line 69
    sget-object v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->FRAGMENTS:[Ljava/lang/Class;

    array-length v0, v0

    sput v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAB_INDEX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSmsInfoList:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mOnPageChangeListener:Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;

    .line 416
    new-instance v0, Lcom/lewa/cloud/SmsSyncDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$3;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lcom/lewa/cloud/SmsSyncDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$4;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncResultHandler:Landroid/os/Handler;

    .line 570
    return-void
.end method

.method static synthetic access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lewa/cloud/SmsSyncDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lewa/cloud/SmsSyncDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->dealwithNetworkDisconnection()V

    return-void
.end method

.method static synthetic access$102(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->TAB_INDEX_COUNT:I

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/lewa/cloud/SmsSyncDetailActivity;->FRAGMENTS:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/PagerHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/CloudViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lewa/cloud/SmsSyncDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lewa/cloud/SmsSyncDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refresh()V

    return-void
.end method

.method static synthetic access$900(Lcom/lewa/cloud/SmsSyncDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    return v0
.end method

.method private dealwithNetworkDisconnection()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    return-void
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v0}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method private notifySync(Z)V
    .locals 14
    .parameter "sync"

    .prologue
    const/4 v13, 0x1

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v8, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 371
    .local v8, uid:I
    if-eqz p1, :cond_1

    .line 372
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    .local v1, builder:Landroid/app/Notification$Builder;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 374
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 375
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 376
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 378
    .local v6, res:Landroid/content/res/Resources;
    iget v11, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    if-ne v11, v13, :cond_0

    .line 379
    const v11, 0x7f07005a

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, body:Ljava/lang/CharSequence;
    :goto_0
    const v11, 0x7f070058

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 385
    .local v7, title:Ljava/lang/CharSequence;
    const v11, 0x7f020016

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 386
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 387
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 389
    .local v9, when:J
    new-instance v4, Landroid/widget/RemoteViews;

    const v11, 0x7f030008

    invoke-direct {v4, v5, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 390
    .local v4, contentView:Landroid/widget/RemoteViews;
    const/high16 v11, 0x7f0a

    const v12, 0x7f020016

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 391
    const v11, 0x7f0a0001

    invoke-virtual {v4, v11, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    const v11, 0x7f0a001e

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 393
    const v11, 0x7f0a001d

    const-string v12, "kk:mm"

    invoke-static {v12, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {v2, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v2, click:Landroid/content/Intent;
    const/high16 v11, 0x800

    invoke-static {p0, v8, v2, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 402
    .local v3, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 404
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 414
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

    .line 382
    .restart local v1       #builder:Landroid/app/Notification$Builder;
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v6       #res:Landroid/content/res/Resources;
    .restart local v8       #uid:I
    :cond_0
    const v11, 0x7f07005b

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/CharSequence;
    goto :goto_0

    .line 408
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    check-cast v11, Landroid/app/NotificationManager;

    invoke-virtual {v11, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 412
    .end local v5           #packageName:Ljava/lang/String;
    .end local v8           #uid:I
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectedNum:I

    iget v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    invoke-virtual {p0, v0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refreshSelectNum(II)V

    .line 302
    return-void
.end method

.method private setupActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 122
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 123
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 124
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x9090010

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, customActionBarView:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 126
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 130
    const v4, 0x9020001

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectCountTextView:Landroid/widget/TextView;

    .line 132
    const v4, 0x9020002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, quit:Landroid/view/View;
    new-instance v4, Lcom/lewa/cloud/SmsSyncDetailActivity$1;

    invoke-direct {v4, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$1;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v4, 0x9020003

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;

    .line 145
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x9080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mAllIsSelected:Z

    .line 147
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z

    .line 148
    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;

    new-instance v5, Lcom/lewa/cloud/SmsSyncDetailActivity$2;

    invoke-direct {v5, p0}, Lcom/lewa/cloud/SmsSyncDetailActivity$2;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private updateSmsAll()Z
    .locals 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iget v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateSmsData(I)Z

    move-result v0

    .line 306
    .local v0, ret1:Z
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    invoke-virtual {v2}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->updateSmsDurationData()Z

    move-result v1

    .line 307
    .local v1, ret2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public endSync()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercent:Landroid/widget/TextView;

    .line 358
    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->notifySync(Z)V

    .line 360
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->finish()V

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 193
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 227
    iget v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    if-ne v0, v3, :cond_2

    .line 228
    iget-boolean v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v10

    .line 230
    .local v10, fragments:[Landroid/app/Fragment;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, v10

    if-ge v11, v0, :cond_1

    .line 231
    aget-object v0, v10, v11

    instance-of v0, v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    if-eqz v0, :cond_0

    .line 232
    aget-object v9, v10, v11

    check-cast v9, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    .line 233
    .local v9, fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    invoke-virtual {v9}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getSelectedNum()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v9           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    .end local v10           #fragments:[Landroid/app/Fragment;
    .end local v11           #i:I
    :goto_1
    return-void

    .line 230
    .restart local v10       #fragments:[Landroid/app/Fragment;
    .restart local v11       #i:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 242
    .end local v10           #fragments:[Landroid/app/Fragment;
    .end local v11           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070048

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070049

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    iget-boolean v6, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z

    iget v7, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mTimeDuration:I

    move v4, v3

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IIZZILandroid/content/Context;)V

    goto :goto_1

    .line 247
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #info:Ljava/lang/String;
    :cond_2
    iget-boolean v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v10

    .line 249
    .restart local v10       #fragments:[Landroid/app/Fragment;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    array-length v0, v10

    if-ge v11, v0, :cond_4

    .line 250
    aget-object v0, v10, v11

    instance-of v0, v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    if-eqz v0, :cond_3

    .line 251
    aget-object v9, v10, v11

    check-cast v9, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    .line 252
    .restart local v9       #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    invoke-virtual {v9}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->getSelectedNum()I

    move-result v0

    if-nez v0, :cond_3

    .line 253
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lcom/lewa/cloud/SmsSyncDetailActivity$AlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    .end local v9           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 261
    .end local v10           #fragments:[Landroid/app/Fragment;
    .end local v11           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07004c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    .restart local v1       #title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07004d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 263
    .restart local v2       #info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z

    iget-boolean v6, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mByAllConversation:Z

    iget v7, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mTimeDuration:I

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/lewa/cloud/fragment/SyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;IIZZILandroid/content/Context;)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 96
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "direction"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, syncToCloud:I
    const v2, 0x7f0a0016

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lewa/cloud/widget/CloudViewPager;

    iput-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;

    .line 98
    const v2, 0x7f0a0015

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lewa/cloud/widget/PagerHeader;

    iput-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    .line 99
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    const/4 v3, 0x0

    const v4, 0x7f070035

    invoke-virtual {p0, v4}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lewa/cloud/widget/PagerHeader;->add(ILjava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    const v3, 0x7f070036

    invoke-virtual {p0, v3}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/lewa/cloud/widget/PagerHeader;->add(ILjava/lang/String;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x90800b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/widget/PagerHeader;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;

    new-instance v3, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;-><init>(Lcom/lewa/cloud/SmsSyncDetailActivity;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/widget/CloudViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 105
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mOnPageChangeListener:Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/widget/CloudViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mOnPageChangeListener:Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/widget/PagerHeader;->setOnHeaderClickListener(Lcom/lewa/cloud/widget/PagerHeader$OnHeaderClickListener;)V

    .line 107
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncButton:Landroid/widget/Button;

    .line 108
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "direction"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    .line 110
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->setupActionBar()V

    .line 111
    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v2, p0}, Lcom/lewa/cloud/CloudApp;->addActivity(Landroid/app/Activity;)V

    .line 112
    sget-object v2, Lcom/lewa/cloud/Constants;->APPLICATION:Lcom/lewa/cloud/CloudApp;

    invoke-virtual {v2}, Lcom/lewa/cloud/CloudApp;->getCloudManager()Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    move-result-object v2

    iput-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    .line 113
    new-instance v2, Lcom/lewa/cloud/manager/SyncProcessorObsv;

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/lewa/cloud/manager/SyncProcessorObsv;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    sput-object v2, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    .line 114
    new-instance v2, Lcom/lewa/cloud/manager/SyncResultObsv;

    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncResultHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/lewa/cloud/manager/SyncResultObsv;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    .line 115
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v3, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncObserver:Lcom/lewa/cloud/manager/SyncProcessorObsv;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setProgressObsv(Lcom/lewa/cloud/manager/SyncProcessorObsv;)V

    .line 116
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    sget-object v3, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncResultObserver:Lcom/lewa/cloud/manager/SyncResultObsv;

    invoke-virtual {v2, v3}, Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;->setSyncResultObsv(Lcom/lewa/cloud/manager/SyncResultObsv;)V

    .line 117
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mCloudManager:Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager;

    iput v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mTimeDuration:I

    .line 118
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->updateSmsAll()Z

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->onBackPressed()V

    .line 199
    const/4 v0, 0x1

    .line 204
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
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->refresh()V

    .line 187
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 365
    return-void
.end method

.method public refreshSelectNum(II)V
    .locals 5
    .parameter "peopleNum"
    .parameter "smsNum"

    .prologue
    const/4 v3, 0x1

    .line 268
    iput p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectedNum:I

    .line 269
    iput p2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    .line 272
    iget v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    if-ne v0, v3, :cond_0

    .line 273
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    goto :goto_0
.end method

.method public refreshSelectNumByTime(III)V
    .locals 5
    .parameter "peopleNum"
    .parameter "smsNum"
    .parameter "duration"

    .prologue
    const/4 v3, 0x1

    .line 284
    iput p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectedNum:I

    .line 285
    iput p2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    .line 286
    iput p3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mTimeDuration:I

    .line 289
    iget v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mDir:I

    if-ne v0, v3, :cond_0

    .line 290
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectCountTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSyncText:Ljava/lang/String;

    goto :goto_0
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
    .line 348
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercent:Landroid/widget/TextView;

    .line 349
    iput-object p2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 350
    const v1, 0x7f070040

    invoke-virtual {p0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mPercentFormat:Ljava/lang/String;

    .line 351
    new-instance v0, Lcom/lewa/cloud/task/SyncDataTask;

    invoke-virtual {p0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

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

    .line 352
    .local v0, syncTask:Lcom/lewa/cloud/task/SyncDataTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/lewa/cloud/task/SyncDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 353
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->notifySync(Z)V

    .line 354
    return-void
.end method

.method public updateSmsList()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 311
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v1

    .line 312
    .local v1, fragments:[Landroid/app/Fragment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 313
    aget-object v3, v1, v2

    instance-of v3, v3, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    if-eqz v3, :cond_1

    .line 314
    aget-object v0, v1, v2

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    .line 315
    .local v0, fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    iget-object v3, v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    iget-object v4, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSmsInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->setData(Ljava/util/List;)V

    .line 316
    iput v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectedNum:I

    .line 317
    iput v5, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mUpdateNum:I

    .line 318
    iget-object v3, v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->mContactsAdapter:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;

    invoke-virtual {v3}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment$ContactsSyncAdapter;->notifyDataSetChanged()V

    .line 312
    .end local v0           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_1
    aget-object v3, v1, v2

    instance-of v3, v3, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    if-eqz v3, :cond_0

    .line 321
    aget-object v0, v1, v2

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    .line 322
    .local v0, fragment:Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mSmsInfoList:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->setData(Ljava/util/List;)V

    goto :goto_1

    .line 325
    .end local v0           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public updateSmsNumByTime(Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;)Z
    .locals 4
    .parameter "num"

    .prologue
    .line 329
    iget-object v3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    invoke-virtual {v3}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v1

    .line 330
    .local v1, fragments:[Landroid/app/Fragment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 331
    aget-object v3, v1, v2

    instance-of v3, v3, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    if-eqz v3, :cond_0

    .line 332
    aget-object v0, v1, v2

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    .line 333
    .local v0, fragment:Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;
    invoke-virtual {v0, p1}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->setNum(Lcom/lewa/cloud/manager/CloudManagerFactory$CloudManager$SmsDurationNum;)V

    .line 330
    .end local v0           #fragment:Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
