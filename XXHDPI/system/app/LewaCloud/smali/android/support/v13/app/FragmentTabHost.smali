.class public Landroid/support/v13/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/FragmentTabHost$1;,
        Landroid/support/v13/app/FragmentTabHost$SavedState;,
        Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;,
        Landroid/support/v13/app/FragmentTabHost$TabInfo;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mRealTabContent:Landroid/widget/FrameLayout;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v13/app/FragmentTabHost$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0, p1, v1}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v13/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method private doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 6
    .parameter "tabId"
    .parameter "ft"

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, newTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 312
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 313
    .local v2, tab:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    move-object v1, v2

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v2           #tab:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    :cond_1
    if-nez v1, :cond_2

    .line 318
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No tab known for tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_2
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eq v3, v1, :cond_6

    .line 321
    if-nez p2, :cond_3

    .line 322
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 324
    :cond_3
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 326
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 329
    :cond_4
    if-eqz v1, :cond_5

    .line 330
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_7

    .line 331
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$300(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$400(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v3

    #setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 333
    iget v3, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 339
    :cond_5
    :goto_1
    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 341
    :cond_6
    return-object p2

    .line 335
    :cond_7
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method private ensureContent()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 201
    iget v0, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 202
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No tab content FrameLayout found for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    return-void
.end method

.method private initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v10, 0x1020013

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 132
    new-array v4, v9, [I

    const v5, 0x10100f3

    aput v5, v4, v6

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    .line 135
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 141
    invoke-virtual {p0, v10}, Landroid/support/v13/app/FragmentTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 142
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Landroid/support/v13/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v3, Landroid/widget/TabWidget;

    invoke-direct {v3, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    .line 149
    .local v3, tw:Landroid/widget/TabWidget;
    invoke-virtual {v3, v10}, Landroid/widget/TabWidget;->setId(I)V

    .line 150
    invoke-virtual {v3, v6}, Landroid/widget/TabWidget;->setOrientation(I)V

    .line 151
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, fl:Landroid/widget/FrameLayout;
    const v4, 0x1020011

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 157
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v1, Landroid/widget/FrameLayout;

    .end local v1           #fl:Landroid/widget/FrameLayout;
    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .restart local v1       #fl:Landroid/widget/FrameLayout;
    iput-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    .line 160
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    iget v5, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 161
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .end local v1           #fl:Landroid/widget/FrameLayout;
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .end local v3           #tw:Landroid/widget/TabWidget;
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "tabSpec"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p2, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;

    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v13/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 216
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, tag:Ljava/lang/String;
    new-instance v1, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    invoke-direct {v1, v2, p2, p3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 220
    .local v1, info:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    iget-boolean v3, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    #setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1, v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 225
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->isDetached()Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 227
    .local v0, ft:Landroid/app/FragmentTransaction;
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v1}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 228
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 232
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0, p1}, Landroid/support/v13/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 234
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, currentTab:Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, ft:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 246
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 247
    .local v3, tab:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    #setter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3, v4}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$102(Landroid/support/v13/app/FragmentTabHost$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;

    .line 248
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isDetached()Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->tag:Ljava/lang/String;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$200(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iput-object v3, p0, Landroid/support/v13/app/FragmentTabHost;->mLastTab:Landroid/support/v13/app/FragmentTabHost$TabInfo;

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    if-nez v1, :cond_2

    .line 258
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 260
    :cond_2
    #getter for: Landroid/support/v13/app/FragmentTabHost$TabInfo;->fragment:Landroid/app/Fragment;
    invoke-static {v3}, Landroid/support/v13/app/FragmentTabHost$TabInfo;->access$100(Landroid/support/v13/app/FragmentTabHost$TabInfo;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 267
    .end local v3           #tab:Landroid/support/v13/app/FragmentTabHost$TabInfo;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 268
    invoke-direct {p0, v0, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 271
    iget-object v4, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 273
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    .line 279
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    .line 292
    .local v0, ss:Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {v0}, Landroid/support/v13/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    iget-object v1, v0, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v13/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 284
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v13/app/FragmentTabHost$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v13/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 285
    .local v0, ss:Landroid/support/v13/app/FragmentTabHost$SavedState;
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v13/app/FragmentTabHost$SavedState;->curTab:Ljava/lang/String;

    .line 286
    return-object v0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 298
    iget-boolean v1, p0, Landroid/support/v13/app/FragmentTabHost;->mAttached:Z

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v13/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 300
    .local v0, ft:Landroid/app/FragmentTransaction;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 304
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v1, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 307
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 211
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 212
    return-void
.end method

.method public setup()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 0
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 179
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 181
    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->ensureContent()V

    .line 182
    return-void
.end method

.method public setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V
    .locals 2
    .parameter "context"
    .parameter "manager"
    .parameter "containerId"

    .prologue
    .line 185
    invoke-super {p0}, Landroid/widget/TabHost;->setup()V

    .line 186
    iput-object p1, p0, Landroid/support/v13/app/FragmentTabHost;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Landroid/support/v13/app/FragmentTabHost;->mFragmentManager:Landroid/app/FragmentManager;

    .line 188
    iput p3, p0, Landroid/support/v13/app/FragmentTabHost;->mContainerId:I

    .line 189
    invoke-direct {p0}, Landroid/support/v13/app/FragmentTabHost;->ensureContent()V

    .line 190
    iget-object v0, p0, Landroid/support/v13/app/FragmentTabHost;->mRealTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v13/app/FragmentTabHost;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 195
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/support/v13/app/FragmentTabHost;->setId(I)V

    .line 197
    :cond_0
    return-void
.end method
