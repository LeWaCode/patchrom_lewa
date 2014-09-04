.class public Llewa/widget/PagerHeader;
.super Landroid/view/ViewGroup;
.source "PagerHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/PagerHeader$ColorSet;,
        Llewa/widget/PagerHeader$OnHeaderClickListener;
    }
.end annotation


# static fields
.field private static final LEFT_ZONE:I = -0x1

.field private static final MIDDLE_ZONE:I = 0x0

.field private static final RIGHT_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PagerHeader"

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field private mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

.field private mAlwaysInTapRegion:Z

.field private mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

.field private mBottomBarHeight:I

.field private mChangeOnClick:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDisplayedPage:I

.field private mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

.field private mFadingEdgeLength:I

.field private mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

.field private mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

.field private mLeftZoneEdge:I

.field private mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

.field private mPaddingPush:I

.field private mRightZoneEdge:I

.field private mShadow:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private mShowBottomBar:Z

.field private mShowTab:Z

.field private mShowTopShadow:Z

.field private mTabColor:Llewa/widget/PagerHeader$ColorSet;

.field private mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mTabHeight:I

.field private mTabPadding:I

.field private mTouchSlopSquare:I

.field private mTouchZonesAccurate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/widget/PagerHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    const/high16 v0, 0x903

    invoke-direct {p0, p1, p2, v0}, Llewa/widget/PagerHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v6, 0x0

    iput v6, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    .line 68
    const/4 v6, 0x0

    iput-object v6, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    .line 70
    const/4 v6, 0x1

    iput-boolean v6, p0, Llewa/widget/PagerHeader;->mChangeOnClick:Z

    .line 103
    iput-object p1, p0, Llewa/widget/PagerHeader;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    sput-object v6, Llewa/widget/PagerHeader;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 107
    sget-object v6, Lcom/lewa/internal/R$styleable;->PagerHeader:[I

    const/4 v7, 0x0

    invoke-virtual {p1, p2, v6, v7, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v6, Llewa/widget/PagerHeader$ColorSet;

    const/4 v7, 0x1

    const/high16 v8, -0x100

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, p0, v7}, Llewa/widget/PagerHeader$ColorSet;-><init>(Llewa/widget/PagerHeader;I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    .line 110
    new-instance v6, Llewa/widget/PagerHeader$ColorSet;

    const/4 v7, 0x2

    const v8, -0xbbbbbc

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, p0, v7}, Llewa/widget/PagerHeader$ColorSet;-><init>(Llewa/widget/PagerHeader;I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    .line 112
    new-instance v6, Llewa/widget/PagerHeader$ColorSet;

    const/4 v7, 0x3

    const v8, -0xcc4a1b

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-direct {v6, p0, v7}, Llewa/widget/PagerHeader$ColorSet;-><init>(Llewa/widget/PagerHeader;I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mTabColor:Llewa/widget/PagerHeader$ColorSet;

    .line 113
    const/4 v6, 0x4

    const/high16 v7, 0x4080

    invoke-static {v7}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mTabHeight:I

    .line 114
    const/4 v6, 0x5

    const/high16 v7, 0x4120

    invoke-static {v7}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mTabPadding:I

    .line 115
    const/4 v6, 0x6

    const/high16 v7, 0x4248

    invoke-static {v7}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mPaddingPush:I

    .line 116
    const/4 v6, 0x7

    const/high16 v7, 0x41f0

    invoke-static {v7}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mFadingEdgeLength:I

    .line 118
    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Llewa/widget/PagerHeader;->mShowTopShadow:Z

    .line 119
    const/16 v6, 0xb

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Llewa/widget/PagerHeader;->mShowBottomBar:Z

    .line 120
    const/16 v6, 0xc

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Llewa/widget/PagerHeader;->mShowTab:Z

    .line 122
    new-instance v3, Llewa/widget/PagerHeader$ColorSet;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Llewa/widget/PagerHeader$ColorSet;-><init>(Llewa/widget/PagerHeader;I)V

    .line 123
    .local v3, fadingEdgeColorHint:Llewa/widget/PagerHeader$ColorSet;
    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 125
    .local v1, backgroundColor:I
    invoke-virtual {p0, v1}, Llewa/widget/PagerHeader;->setBackgroundColor(I)V

    .line 126
    invoke-virtual {v3, v1}, Llewa/widget/PagerHeader$ColorSet;->setColor(I)V

    .line 135
    .end local v1           #backgroundColor:I
    :cond_0
    :goto_0
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 136
    iget-object v6, p0, Llewa/widget/PagerHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, p0, Llewa/widget/PagerHeader;->mTabColor:Llewa/widget/PagerHeader$ColorSet;

    invoke-virtual {v7}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    .line 139
    iget-object v6, p0, Llewa/widget/PagerHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, p0, Llewa/widget/PagerHeader;->mTabColor:Llewa/widget/PagerHeader$ColorSet;

    invoke-virtual {v7}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    const/high16 v6, 0x4000

    invoke-static {v6}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mBottomBarHeight:I

    .line 142
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 144
    const/high16 v6, 0x4040

    invoke-static {v6}, Llewa/widget/PagerHeader;->dipToPixels(F)I

    move-result v6

    iput v6, p0, Llewa/widget/PagerHeader;->mShadowHeight:I

    .line 146
    const/4 v6, 0x2

    new-array v4, v6, [I

    const/4 v6, 0x0

    invoke-virtual {v3}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v7

    aput v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Llewa/widget/PagerHeader$ColorSet;->getColor(I)I

    move-result v7

    aput v7, v4, v6

    .line 148
    .local v4, fadingEdgeGradient:[I
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

    .line 150
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v6, p0, Llewa/widget/PagerHeader;->mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

    .line 153
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 154
    .local v2, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    .line 155
    .local v5, touchSlop:I
    mul-int v6, v5, v5

    iput v6, p0, Llewa/widget/PagerHeader;->mTouchSlopSquare:I

    .line 156
    return-void

    .line 127
    .end local v2           #config:Landroid/view/ViewConfiguration;
    .end local v4           #fadingEdgeGradient:[I
    .end local v5           #touchSlop:I
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v3, v6}, Llewa/widget/PagerHeader$ColorSet;->setColor(I)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 131
    const-string v6, "PagerHeader"

    const-string v7, "Either backgroundColor or fadingEdgeColorHint must be specified to enable fading edges"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Llewa/widget/PagerHeader;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 142
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x88t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static dipToPixels(F)I
    .locals 2
    .parameter "dipValue"

    .prologue
    .line 459
    sget-object v0, Llewa/widget/PagerHeader;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getTouchZone(Landroid/view/MotionEvent;)I
    .locals 12
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 423
    iget-boolean v11, p0, Llewa/widget/PagerHeader;->mTouchZonesAccurate:Z

    if-eqz v11, :cond_3

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 425
    .local v7, x:I
    iget v11, p0, Llewa/widget/PagerHeader;->mLeftZoneEdge:I

    if-ge v7, v11, :cond_1

    iget v11, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    if-lez v11, :cond_1

    move v9, v8

    .line 448
    .end local v7           #x:I
    :cond_0
    :goto_0
    return v9

    .line 427
    .restart local v7       #x:I
    :cond_1
    iget v8, p0, Llewa/widget/PagerHeader;->mLeftZoneEdge:I

    if-le v7, v8, :cond_2

    iget v8, p0, Llewa/widget/PagerHeader;->mRightZoneEdge:I

    if-lt v7, v8, :cond_0

    .line 429
    :cond_2
    iget v8, p0, Llewa/widget/PagerHeader;->mRightZoneEdge:I

    if-le v7, v8, :cond_0

    iget v8, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_0

    move v9, v10

    .line 430
    goto :goto_0

    .line 433
    .end local v7           #x:I
    :cond_3
    iget v11, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    invoke-virtual {p0, v11}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 434
    .local v4, middleChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 435
    .local v2, mLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 437
    .local v3, mRight:I
    iget v11, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 438
    .local v1, leftChild:Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 440
    .local v0, lRight:I
    :goto_1
    iget v11, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 441
    .local v6, rightChild:Landroid/view/View;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 443
    .local v5, rLeft:I
    :goto_2
    if-gez v0, :cond_6

    move v8, v9

    :goto_3
    iput v8, p0, Llewa/widget/PagerHeader;->mLeftZoneEdge:I

    .line 444
    if-gez v5, :cond_7

    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getWidth()I

    move-result v8

    :goto_4
    iput v8, p0, Llewa/widget/PagerHeader;->mRightZoneEdge:I

    .line 445
    iput-boolean v10, p0, Llewa/widget/PagerHeader;->mTouchZonesAccurate:Z

    .line 446
    invoke-direct {p0, p1}, Llewa/widget/PagerHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v9

    goto :goto_0

    .end local v0           #lRight:I
    .end local v5           #rLeft:I
    .end local v6           #rightChild:Landroid/view/View;
    :cond_4
    move v0, v8

    .line 438
    goto :goto_1

    .restart local v0       #lRight:I
    .restart local v6       #rightChild:Landroid/view/View;
    :cond_5
    move v5, v8

    .line 441
    goto :goto_2

    .line 443
    .restart local v5       #rLeft:I
    :cond_6
    sub-int v8, v2, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    goto :goto_3

    .line 444
    :cond_7
    sub-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    goto :goto_4
.end method

.method private static map(FFFII)I
    .locals 2
    .parameter "value"
    .parameter "fromLow"
    .parameter "fromHigh"
    .parameter "toLow"
    .parameter "toHigh"

    .prologue
    .line 452
    sub-float v0, p0, p1

    sub-int v1, p4, p3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    int-to-float v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private onTap(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Llewa/widget/PagerHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v0

    .line 410
    .local v0, touchZone:I
    iget-object v1, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    iget v2, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    add-int/2addr v2, v0

    invoke-interface {v1, v2}, Llewa/widget/PagerHeader$OnHeaderClickListener;->onHeaderClicked(I)V

    .line 414
    :cond_0
    iget-boolean v1, p0, Llewa/widget/PagerHeader;->mChangeOnClick:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 415
    iget v1, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Llewa/widget/PagerHeader;->setDisplayedPage(I)V

    .line 416
    iget-object v1, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    iget v2, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    invoke-interface {v1, v2}, Llewa/widget/PagerHeader$OnHeaderClickListener;->onHeaderSelected(I)V

    .line 420
    :cond_1
    return-void
.end method

.method private showPress(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "pressed"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Llewa/widget/PagerHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v0

    .line 402
    .local v0, touchZone:I
    if-eqz v0, :cond_0

    .line 403
    iget v2, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    invoke-direct {p0, p1}, Llewa/widget/PagerHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 404
    .local v1, view:Landroid/widget/TextView;
    if-eqz p2, :cond_1

    iget-object v2, p0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    invoke-virtual {v2}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    .end local v1           #view:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 404
    .restart local v1       #view:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    invoke-virtual {v2}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 166
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Llewa/widget/PagerHeader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    invoke-virtual {v1}, Llewa/widget/PagerHeader$ColorSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-virtual {p0, v0}, Llewa/widget/PagerHeader;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v0, p0, Llewa/widget/PagerHeader;->mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 358
    iget-object v0, p0, Llewa/widget/PagerHeader;->mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    iget-boolean v0, p0, Llewa/widget/PagerHeader;->mShowTopShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/PagerHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 360
    :cond_0
    iget-boolean v0, p0, Llewa/widget/PagerHeader;->mShowBottomBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/widget/PagerHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    :cond_1
    iget-boolean v0, p0, Llewa/widget/PagerHeader;->mShowTab:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/widget/PagerHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    :cond_2
    return-void
.end method

.method public getChangeOnClick()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Llewa/widget/PagerHeader;->mChangeOnClick:Z

    return v0
.end method

.method public getDisplayedPage()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 325
    sub-int v2, p4, p2

    .line 326
    .local v2, right:I
    sub-int v0, p5, p3

    .line 328
    .local v0, height:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 332
    invoke-virtual {p0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 333
    .local v4, view:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 334
    .local v6, viewWidth:I
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 335
    .local v5, viewHeight:I
    div-int/lit8 v7, v0, 0x2

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    sub-int v3, v7, v8

    .line 337
    .local v3, textTop:I
    add-int v7, v2, v6

    add-int v8, v3, v5

    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v3           #textTop:I
    .end local v4           #view:Landroid/widget/TextView;
    .end local v5           #viewHeight:I
    .end local v6           #viewWidth:I
    :cond_0
    iget v7, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Llewa/widget/PagerHeader;->setPosition(IFI)V

    .line 344
    iget-object v7, p0, Llewa/widget/PagerHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Llewa/widget/PagerHeader;->mShadowHeight:I

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 345
    iget-object v7, p0, Llewa/widget/PagerHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v8, 0x0

    iget v9, p0, Llewa/widget/PagerHeader;->mBottomBarHeight:I

    sub-int v9, v0, v9

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 348
    iget-object v7, p0, Llewa/widget/PagerHeader;->mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

    const/4 v8, 0x0

    iget v9, p0, Llewa/widget/PagerHeader;->mShadowHeight:I

    iget v10, p0, Llewa/widget/PagerHeader;->mFadingEdgeLength:I

    iget v11, p0, Llewa/widget/PagerHeader;->mBottomBarHeight:I

    sub-int v11, v0, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 349
    iget-object v7, p0, Llewa/widget/PagerHeader;->mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

    iget v8, p0, Llewa/widget/PagerHeader;->mFadingEdgeLength:I

    sub-int v8, v2, v8

    iget v9, p0, Llewa/widget/PagerHeader;->mShadowHeight:I

    iget v10, p0, Llewa/widget/PagerHeader;->mBottomBarHeight:I

    sub-int v10, v0, v10

    invoke-virtual {v7, v8, v9, v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 351
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    .line 304
    const/4 v4, 0x0

    .line 305
    .local v4, textHeight:I
    const/4 v5, 0x0

    .line 306
    .local v5, textWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 307
    invoke-virtual {p0, v3}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 308
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, v9, v9}, Landroid/view/View;->measure(II)V

    .line 309
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 310
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 313
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget v8, p0, Llewa/widget/PagerHeader;->mFadingEdgeLength:I

    mul-int/lit8 v8, v8, 0x2

    add-int v1, v5, v8

    .line 314
    .local v1, desiredWidth:I
    invoke-static {v1, p1}, Llewa/widget/PagerHeader;->resolveSize(II)I

    move-result v7

    .line 316
    .local v7, width:I
    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Llewa/widget/PagerHeader;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/PagerHeader;->mShadowHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/PagerHeader;->mTabHeight:I

    add-int v0, v8, v9

    .line 318
    .local v0, desiredHeight:I
    invoke-static {v0, p2}, Llewa/widget/PagerHeader;->resolveSize(II)I

    move-result v2

    .line 320
    .local v2, height:I
    invoke-virtual {p0, v7, v2}, Llewa/widget/PagerHeader;->setMeasuredDimension(II)V

    .line 321
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 367
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 368
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 370
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    return v9

    .line 372
    :pswitch_0
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1

    .line 373
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 375
    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 376
    iput-boolean v9, p0, Llewa/widget/PagerHeader;->mAlwaysInTapRegion:Z

    .line 377
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6, v9}, Llewa/widget/PagerHeader;->showPress(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 380
    :pswitch_1
    iget-boolean v6, p0, Llewa/widget/PagerHeader;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_0

    .line 381
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v1, v6

    .line 382
    .local v1, deltaX:I
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v6, v5, v6

    float-to-int v2, v6

    .line 383
    .local v2, deltaY:I
    mul-int v6, v1, v1

    mul-int v7, v2, v2

    add-int v3, v6, v7

    .line 384
    .local v3, distance:I
    iget v6, p0, Llewa/widget/PagerHeader;->mTouchSlopSquare:I

    if-le v3, v6, :cond_0

    .line 385
    iput-boolean v8, p0, Llewa/widget/PagerHeader;->mAlwaysInTapRegion:Z

    .line 386
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6, v8}, Llewa/widget/PagerHeader;->showPress(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 391
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #distance:I
    :pswitch_2
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6, v8}, Llewa/widget/PagerHeader;->showPress(Landroid/view/MotionEvent;Z)V

    .line 392
    iget-boolean v6, p0, Llewa/widget/PagerHeader;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_0

    .line 393
    iget-object v6, p0, Llewa/widget/PagerHeader;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6}, Llewa/widget/PagerHeader;->onTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChangeOnClick(Z)V
    .locals 0
    .parameter "changeOnClick"

    .prologue
    .line 199
    iput-boolean p1, p0, Llewa/widget/PagerHeader;->mChangeOnClick:Z

    .line 200
    return-void
.end method

.method public setDisplayedPage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 177
    iput p1, p0, Llewa/widget/PagerHeader;->mDisplayedPage:I

    .line 178
    return-void
.end method

.method public setOnHeaderClickListener(Llewa/widget/PagerHeader$OnHeaderClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 192
    iput-object p1, p0, Llewa/widget/PagerHeader;->mOnHeaderClickListener:Llewa/widget/PagerHeader$OnHeaderClickListener;

    .line 193
    return-void
.end method

.method public setPosition(IFI)V
    .locals 27
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 210
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Llewa/widget/PagerHeader;->mTouchZonesAccurate:Z

    .line 211
    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getWidth()I

    move-result v20

    .line 212
    .local v20, width:I
    div-int/lit8 v6, v20, 0x2

    .line 215
    .local v6, center:I
    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    invoke-virtual/range {p0 .. p1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    if-nez v21, :cond_1

    .line 300
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 222
    .restart local p1
    :cond_1
    if-ltz p1, :cond_3

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 223
    invoke-virtual/range {p0 .. p1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 224
    .local v16, view:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    .line 225
    .local v19, viewWidth:I
    const/4 v8, 0x0

    .line 226
    .local v8, leftMin:I
    add-int/lit8 v21, p1, 0x1

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 227
    add-int/lit8 v21, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 228
    .local v11, nextViewWidth:I
    const/16 v21, 0x0

    div-int/lit8 v22, v11, 0x2

    sub-int v22, v6, v22

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 231
    .end local v11           #nextViewWidth:I
    :cond_2
    div-int/lit8 v21, v19, 0x2

    sub-int v7, v6, v21

    .line 232
    .local v7, leftMax:I
    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v7}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v10

    .line 233
    .local v10, newLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTop()I

    move-result v21

    add-int v22, v10, v19

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBottom()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 234
    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->red:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->red:I

    move/from16 v24, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v21

    const/high16 v22, 0x3f80

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->green:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->green:I

    move/from16 v25, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v22

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->blue:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->blue:I

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v23

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    .end local v7           #leftMax:I
    .end local v8           #leftMin:I
    .end local v10           #newLeft:I
    .end local v16           #view:Landroid/widget/TextView;
    .end local v19           #viewWidth:I
    :cond_3
    add-int/lit8 v21, p1, 0x1

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 243
    add-int/lit8 v21, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 244
    .restart local v16       #view:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    .line 245
    .restart local v19       #viewWidth:I
    invoke-virtual/range {p0 .. p1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v14

    .line 246
    .local v14, prevViewWidth:I
    div-int/lit8 v21, v19, 0x2

    sub-int v8, v6, v21

    .line 247
    .restart local v8       #leftMin:I
    sub-int v21, v20, v19

    div-int/lit8 v22, v14, 0x2

    add-int v22, v22, v6

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v23, v0

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 249
    .restart local v7       #leftMax:I
    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v8, v7}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v10

    .line 250
    .restart local v10       #newLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTop()I

    move-result v21

    add-int v22, v10, v19

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBottom()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 251
    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->red:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->red:I

    move/from16 v24, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v21

    const/high16 v22, 0x3f80

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->green:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->green:I

    move/from16 v25, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v22

    const/high16 v23, 0x3f80

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mActiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->blue:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Llewa/widget/PagerHeader$ColorSet;->blue:I

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v23

    invoke-static/range {v21 .. v23}, Landroid/graphics/Color;->rgb(III)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    .end local v7           #leftMax:I
    .end local v8           #leftMin:I
    .end local v10           #newLeft:I
    .end local v14           #prevViewWidth:I
    .end local v16           #view:Landroid/widget/TextView;
    .end local v19           #viewWidth:I
    :cond_4
    if-lez p1, :cond_6

    .line 260
    add-int/lit8 v21, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 261
    .restart local v16       #view:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 262
    .local v13, plusOneLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    .line 263
    .restart local v10       #newLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    .line 264
    .restart local v19       #viewWidth:I
    add-int v21, v10, v19

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    if-lt v13, v0, :cond_5

    if-gez v10, :cond_6

    .line 265
    :cond_5
    const/16 v21, 0x0

    sub-int v22, v13, v19

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 266
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTop()I

    move-result v21

    add-int v22, v10, v19

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBottom()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 267
    const/high16 v21, 0x3f80

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xff

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v5

    .line 268
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Llewa/widget/PagerHeader$ColorSet;->getColor(I)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    .end local v5           #alpha:I
    .end local v10           #newLeft:I
    .end local v13           #plusOneLeft:I
    .end local v16           #view:Landroid/widget/TextView;
    .end local v19           #viewWidth:I
    :cond_6
    add-int/lit8 v21, p1, 0x2

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getChildCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 275
    add-int/lit8 v21, p1, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 276
    .restart local v16       #view:Landroid/widget/TextView;
    add-int/lit8 v21, p1, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v9

    .line 277
    .local v9, minusOneRight:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    .line 278
    .restart local v10       #newLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getWidth()I

    move-result v19

    .line 279
    .restart local v19       #viewWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v21

    if-gt v9, v0, :cond_7

    add-int v21, v10, v19

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 280
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mPaddingPush:I

    move/from16 v21, v0

    add-int v21, v21, v9

    sub-int v22, v20, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 281
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getTop()I

    move-result v21

    add-int v22, v10, v19

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getBottom()I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 282
    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    const/16 v23, 0x0

    const/16 v24, 0xff

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Llewa/widget/PagerHeader;->map(FFFII)I

    move-result v5

    .line 283
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mInactiveTextColor:Llewa/widget/PagerHeader$ColorSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Llewa/widget/PagerHeader$ColorSet;->getColor(I)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .end local v5           #alpha:I
    .end local v9           #minusOneRight:I
    .end local v10           #newLeft:I
    .end local v16           #view:Landroid/widget/TextView;
    .end local v19           #viewWidth:I
    :cond_8
    const/high16 v21, 0x3f00

    cmpg-float v21, p2, v21

    if-gez v21, :cond_9

    .end local p1
    :goto_1
    invoke-virtual/range {p0 .. p1}, Llewa/widget/PagerHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 290
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v17

    .line 291
    .local v17, viewLeft:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v18

    .line 292
    .local v18, viewRight:I
    const/high16 v21, 0x3f00

    sub-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const/high16 v22, 0x3f00

    div-float v12, v21, v22

    .line 293
    .local v12, percent:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mTabHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v12

    move/from16 v0, v21

    float-to-int v15, v0

    .line 294
    .local v15, tabHeight:I
    const/high16 v21, 0x437f

    mul-float v21, v21, v12

    move/from16 v0, v21

    float-to-int v5, v0

    .line 295
    .restart local v5       #alpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mTabPadding:I

    move/from16 v22, v0

    sub-int v22, v17, v22

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getHeight()I

    move-result v23

    sub-int v23, v23, v15

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/PagerHeader;->mTabPadding:I

    move/from16 v24, v0

    add-int v24, v24, v18

    invoke-virtual/range {p0 .. p0}, Llewa/widget/PagerHeader;->getHeight()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/PagerHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 289
    .end local v5           #alpha:I
    .end local v12           #percent:F
    .end local v15           #tabHeight:I
    .end local v16           #view:Landroid/view/View;
    .end local v17           #viewLeft:I
    .end local v18           #viewRight:I
    .restart local p1
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method
