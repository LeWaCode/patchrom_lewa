.class public Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;
.super Ljava/lang/Object;
.source "SmsSyncDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/lewa/cloud/widget/PagerHeader$OnHeaderClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/SmsSyncDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnpageChangeListernerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;


# direct methods
.method public constructor <init>(Lcom/lewa/cloud/SmsSyncDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClicked(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 552
    return-void
.end method

.method public onHeaderSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPager:Lcom/lewa/cloud/widget/CloudViewPager;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1500(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/CloudViewPager;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/lewa/cloud/widget/CloudViewPager;->setCurrentItem(IZ)V

    .line 557
    if-nez p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 560
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->switchRefresh()V

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 565
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->switchRefresh()V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 547
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1300(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/PagerHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/widget/PagerHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1300(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/PagerHeader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lewa/cloud/widget/PagerHeader;->setPosition(IFI)V

    .line 519
    :cond_0
    if-nez p1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    const/4 v1, 0x1

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 531
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mHeader:Lcom/lewa/cloud/widget/PagerHeader;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1300(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/widget/PagerHeader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lewa/cloud/widget/PagerHeader;->setDisplayedPage(I)V

    .line 532
    if-nez p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v1}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 535
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByContactsFragment;->switchRefresh()V

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mSelectAll:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$200(Lcom/lewa/cloud/SmsSyncDetailActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #setter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mByTime:Z
    invoke-static {v0, v2}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$1402(Lcom/lewa/cloud/SmsSyncDetailActivity;Z)Z

    .line 540
    iget-object v0, p0, Lcom/lewa/cloud/SmsSyncDetailActivity$OnpageChangeListernerClass;->this$0:Lcom/lewa/cloud/SmsSyncDetailActivity;

    #getter for: Lcom/lewa/cloud/SmsSyncDetailActivity;->mViewPagerAdapter:Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;
    invoke-static {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity;->access$000(Lcom/lewa/cloud/SmsSyncDetailActivity;)Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lewa/cloud/SmsSyncDetailActivity$ViewPagerAdapter;->getFragments()[Landroid/app/Fragment;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;

    invoke-virtual {v0}, Lcom/lewa/cloud/fragment/SmsSyncByTimeFragment;->switchRefresh()V

    goto :goto_0
.end method
