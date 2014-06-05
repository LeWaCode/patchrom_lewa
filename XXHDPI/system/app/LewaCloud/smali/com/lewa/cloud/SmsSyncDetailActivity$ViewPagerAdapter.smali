.class public Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "SmsSyncDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/SmsSyncDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mCurrentFragment:Landroid/app/Fragment;

.field private mFragmentArray:[Landroid/app/Fragment;

.field final synthetic this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/SmsSyncDetailActivity;Landroid/app/FragmentManager;)V
    .locals 2
    .parameter
    .parameter "fm"

    .prologue
    .line 473
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    .line 474
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 471
    invoke-static {}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1100()I

    move-result v1

    new-array v1, v1, [Landroid/app/Fragment;

    iput-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mFragmentArray:[Landroid/app/Fragment;

    .line 475
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1100()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 476
    invoke-virtual {p0, v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getItem(I)Landroid/app/Fragment;

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 503
    invoke-static {}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1100()I

    move-result v0

    return v0
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getFragments()[Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mFragmentArray:[Landroid/app/Fragment;

    return-object v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .parameter "position"

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mFragmentArray:[Landroid/app/Fragment;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 492
    iget-object v2, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mFragmentArray:[Landroid/app/Fragment;

    invoke-static {}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1200()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    aput-object v1, v2, p1

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mFragmentArray:[Landroid/app/Fragment;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fragment at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 509
    check-cast p3, Landroid/app/Fragment;

    .end local p3
    iput-object p3, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->mCurrentFragment:Landroid/app/Fragment;

    .line 510
    return-void
.end method
