.class public Lcom/lewa/cloud/widget/CloudViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CloudViewPager.java"


# instance fields
.field private mIsFakeDragging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/cloud/widget/CloudViewPager;->mIsFakeDragging:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lewa/cloud/widget/CloudViewPager;->mIsFakeDragging:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lewa/cloud/widget/CloudViewPager;->mIsFakeDragging:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setFakeDragging(Z)V
    .locals 0
    .parameter "dragging"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/lewa/cloud/widget/CloudViewPager;->mIsFakeDragging:Z

    .line 35
    return-void
.end method
