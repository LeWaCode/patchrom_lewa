.class public Llewa/widget/ArrowPageHeader;
.super Landroid/view/ViewGroup;
.source "ArrowPageHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/ArrowPageHeader$ColorSet;,
        Llewa/widget/ArrowPageHeader$OnHeaderClickListener;
    }
.end annotation


# static fields
.field private static INVALID_VIEW_SIZE:I = 0x0

.field private static final LEFT_ZONE:I = -0x1

.field private static final MIDDLE_ZONE:I = 0x0

.field private static final RIGHT_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ArrowPageHeader"

.field private static mDisplay:Landroid/view/Display;

.field private static mDisplayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field private mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

.field private mAlwaysInTapRegion:Z

.field private mBgIndicatorHeight:I

.field private mBgIndicatorImageView:Landroid/widget/ImageView;

.field private mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

.field private mBottomBarHeight:I

.field private mChangeOnClick:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDisplayedPage:I

.field private mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

.field private mFadingEdgeLength:I

.field private mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

.field private mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

.field private mIndicatorHeight:I

.field private mIndicatorImageView:Landroid/widget/ImageView;

.field private mIndicatorPadding:I

.field private mIndicatorWidth:I

.field private mLeftZoneEdge:I

.field private mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

.field private mPaddingPush:I

.field private mRightZoneEdge:I

.field private mShadow:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private mShowBottomBar:Z

.field private mShowTab:Z

.field private mShowTopShadow:Z

.field private mTabColor:Llewa/widget/ArrowPageHeader$ColorSet;

.field private mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mTabHeight:I

.field private mTabPadding:I

.field private mTextSize:I

.field private mTouchSlopSquare:I

.field private mTouchZonesAccurate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x2

    sput v0, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/widget/ArrowPageHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 116
    const v0, 0x9030038

    invoke-direct {p0, p1, p2, v0}, Llewa/widget/ArrowPageHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v8, 0x0

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    .line 76
    const/4 v8, 0x0

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    .line 78
    const/4 v8, 0x1

    iput-boolean v8, p0, Llewa/widget/ArrowPageHeader;->mChangeOnClick:Z

    .line 122
    iput-object p1, p0, Llewa/widget/ArrowPageHeader;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    sput-object v8, Llewa/widget/ArrowPageHeader;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object v8, p1

    .line 124
    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    sput-object v8, Llewa/widget/ArrowPageHeader;->mDisplay:Landroid/view/Display;

    .line 127
    sget-object v8, Lcom/lewa/internal/R$styleable;->PagerHeader:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, v9, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, a:Landroid/content/res/TypedArray;
    new-instance v8, Llewa/widget/ArrowPageHeader$ColorSet;

    const/4 v9, 0x1

    const/high16 v10, -0x100

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v8, p0, v9}, Llewa/widget/ArrowPageHeader$ColorSet;-><init>(Llewa/widget/ArrowPageHeader;I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    .line 130
    new-instance v8, Llewa/widget/ArrowPageHeader$ColorSet;

    const/4 v9, 0x2

    const v10, -0xbbbbbc

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v8, p0, v9}, Llewa/widget/ArrowPageHeader$ColorSet;-><init>(Llewa/widget/ArrowPageHeader;I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    .line 132
    new-instance v8, Llewa/widget/ArrowPageHeader$ColorSet;

    const/4 v9, 0x3

    const v10, -0xcc4a1b

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v8, p0, v9}, Llewa/widget/ArrowPageHeader$ColorSet;-><init>(Llewa/widget/ArrowPageHeader;I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mTabColor:Llewa/widget/ArrowPageHeader$ColorSet;

    .line 133
    const/4 v8, 0x4

    const/high16 v9, 0x4080

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mTabHeight:I

    .line 134
    const/4 v8, 0x5

    const/high16 v9, 0x4120

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mTabPadding:I

    .line 135
    const/4 v8, 0x6

    const/high16 v9, 0x4248

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mPaddingPush:I

    .line 136
    const/4 v8, 0x7

    const/high16 v9, 0x41f0

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLength:I

    .line 138
    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Llewa/widget/ArrowPageHeader;->mShowTopShadow:Z

    .line 139
    const/16 v8, 0xb

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Llewa/widget/ArrowPageHeader;->mShowBottomBar:Z

    .line 140
    const/16 v8, 0xc

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Llewa/widget/ArrowPageHeader;->mShowTab:Z

    .line 142
    new-instance v4, Llewa/widget/ArrowPageHeader$ColorSet;

    const/4 v8, 0x0

    invoke-direct {v4, p0, v8}, Llewa/widget/ArrowPageHeader$ColorSet;-><init>(Llewa/widget/ArrowPageHeader;I)V

    .line 143
    .local v4, fadingEdgeColorHint:Llewa/widget/ArrowPageHeader$ColorSet;
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 145
    .local v1, backgroundColor:I
    invoke-virtual {p0, v1}, Llewa/widget/ArrowPageHeader;->setBackgroundColor(I)V

    .line 146
    invoke-virtual {v4, v1}, Llewa/widget/ArrowPageHeader$ColorSet;->setColor(I)V

    .line 154
    .end local v1           #backgroundColor:I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    sget-object v8, Lcom/lewa/internal/R$styleable;->PagerHeader:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, v9, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 157
    const/16 v8, 0xd

    const/16 v9, 0xe

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mTextSize:I

    .line 158
    const/16 v8, 0x10

    const/high16 v9, 0x4040

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorPadding:I

    .line 159
    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 160
    .local v2, bgIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    .line 161
    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 162
    .local v6, indicatorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorHeight:I

    .line 163
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorWidth:I

    .line 164
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorImageView:Landroid/widget/ImageView;

    .line 165
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Llewa/widget/ArrowPageHeader;->addView(Landroid/view/View;)V

    .line 168
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorImageView:Landroid/widget/ImageView;

    .line 169
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v8}, Llewa/widget/ArrowPageHeader;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 174
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mTabColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v9}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    .line 177
    iget-object v8, p0, Llewa/widget/ArrowPageHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mTabColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v9}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    const/high16 v8, 0x4000

    invoke-static {v8}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mBottomBarHeight:I

    .line 180
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 182
    const/high16 v8, 0x4040

    invoke-static {v8}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v8

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mShadowHeight:I

    .line 184
    const/4 v8, 0x2

    new-array v5, v8, [I

    const/4 v8, 0x0

    invoke-virtual {v4}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v9

    aput v9, v5, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor(I)I

    move-result v9

    aput v9, v5, v8

    .line 186
    .local v5, fadingEdgeGradient:[I
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

    .line 188
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v8, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

    .line 191
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 192
    .local v3, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 193
    .local v7, touchSlop:I
    mul-int v8, v7, v7

    iput v8, p0, Llewa/widget/ArrowPageHeader;->mTouchSlopSquare:I

    .line 194
    return-void

    .line 147
    .end local v2           #bgIndicator:Landroid/graphics/drawable/Drawable;
    .end local v3           #config:Landroid/view/ViewConfiguration;
    .end local v5           #fadingEdgeGradient:[I
    .end local v6           #indicatorDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #touchSlop:I
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 148
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v4, v8}, Llewa/widget/ArrowPageHeader$ColorSet;->setColor(I)V

    goto/16 :goto_0

    .line 150
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 151
    const-string v8, "ArrowPageHeader"

    const-string v9, "Either backgroundColor or fadingEdgeColorHint must be specified to enable fading edges"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v8}, Llewa/widget/ArrowPageHeader;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 180
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
    .line 544
    sget-object v0, Llewa/widget/ArrowPageHeader;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getTouchZone(Landroid/view/MotionEvent;)I
    .locals 13
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 508
    iget-boolean v11, p0, Llewa/widget/ArrowPageHeader;->mTouchZonesAccurate:Z

    if-eqz v11, :cond_3

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 510
    .local v7, x:I
    iget v11, p0, Llewa/widget/ArrowPageHeader;->mLeftZoneEdge:I

    if-ge v7, v11, :cond_1

    iget v11, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    if-lez v11, :cond_1

    move v9, v8

    .line 533
    .end local v7           #x:I
    :cond_0
    :goto_0
    return v9

    .line 512
    .restart local v7       #x:I
    :cond_1
    iget v8, p0, Llewa/widget/ArrowPageHeader;->mLeftZoneEdge:I

    if-le v7, v8, :cond_2

    iget v8, p0, Llewa/widget/ArrowPageHeader;->mRightZoneEdge:I

    if-lt v7, v8, :cond_0

    .line 514
    :cond_2
    iget v8, p0, Llewa/widget/ArrowPageHeader;->mRightZoneEdge:I

    if-le v7, v8, :cond_0

    iget v8, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v11

    sget v12, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    if-ge v8, v11, :cond_0

    move v9, v10

    .line 515
    goto :goto_0

    .line 518
    .end local v7           #x:I
    :cond_3
    iget v11, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    invoke-virtual {p0, v11}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 519
    .local v4, middleChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 520
    .local v2, mLeft:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 522
    .local v3, mRight:I
    iget v11, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, leftChild:Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 525
    .local v0, lRight:I
    :goto_1
    iget v11, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, v11}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 526
    .local v6, rightChild:Landroid/view/View;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 528
    .local v5, rLeft:I
    :goto_2
    if-gez v0, :cond_6

    move v8, v9

    :goto_3
    iput v8, p0, Llewa/widget/ArrowPageHeader;->mLeftZoneEdge:I

    .line 529
    if-gez v5, :cond_7

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getWidth()I

    move-result v8

    :goto_4
    iput v8, p0, Llewa/widget/ArrowPageHeader;->mRightZoneEdge:I

    .line 530
    iput-boolean v10, p0, Llewa/widget/ArrowPageHeader;->mTouchZonesAccurate:Z

    .line 531
    invoke-direct {p0, p1}, Llewa/widget/ArrowPageHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v9

    goto :goto_0

    .end local v0           #lRight:I
    .end local v5           #rLeft:I
    .end local v6           #rightChild:Landroid/view/View;
    :cond_4
    move v0, v8

    .line 523
    goto :goto_1

    .restart local v0       #lRight:I
    .restart local v6       #rightChild:Landroid/view/View;
    :cond_5
    move v5, v8

    .line 526
    goto :goto_2

    .line 528
    .restart local v5       #rLeft:I
    :cond_6
    sub-int v8, v2, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    goto :goto_3

    .line 529
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
    .line 537
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

.method private onHeaderClick(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget-object v2, Llewa/widget/ArrowPageHeader;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v3

    sget v4, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v3, v4

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 476
    .local v0, touchPostion:I
    iget v1, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    if-eq v0, v1, :cond_0

    .line 477
    invoke-virtual {p0, v0}, Llewa/widget/ArrowPageHeader;->setDisplayedPage(I)V

    .line 478
    invoke-virtual {p0, v0}, Llewa/widget/ArrowPageHeader;->setPosition(I)V

    .line 479
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    invoke-interface {v1, v0}, Llewa/widget/ArrowPageHeader$OnHeaderClickListener;->onHeaderSelected(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private onTap(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 494
    invoke-direct {p0, p1}, Llewa/widget/ArrowPageHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v0

    .line 495
    .local v0, touchZone:I
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    iget v2, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    add-int/2addr v2, v0

    invoke-interface {v1, v2}, Llewa/widget/ArrowPageHeader$OnHeaderClickListener;->onHeaderClicked(I)V

    .line 499
    :cond_0
    iget-boolean v1, p0, Llewa/widget/ArrowPageHeader;->mChangeOnClick:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 500
    iget v1, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Llewa/widget/ArrowPageHeader;->setDisplayedPage(I)V

    .line 501
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    iget v2, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    invoke-interface {v1, v2}, Llewa/widget/ArrowPageHeader$OnHeaderClickListener;->onHeaderSelected(I)V

    .line 505
    :cond_1
    return-void
.end method

.method private showPress(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "pressed"

    .prologue
    .line 486
    invoke-direct {p0, p1}, Llewa/widget/ArrowPageHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v0

    .line 487
    .local v0, touchZone:I
    if-eqz v0, :cond_0

    .line 488
    iget v2, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    invoke-direct {p0, p1}, Llewa/widget/ArrowPageHeader;->getTouchZone(Landroid/view/MotionEvent;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 489
    .local v1, view:Landroid/widget/TextView;
    if-eqz p2, :cond_1

    iget-object v2, p0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v2}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    .end local v1           #view:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 489
    .restart local v1       #view:Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v2}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "label"

    .prologue
    const/high16 v3, 0x3f80

    .line 204
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v1}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    const/4 v1, 0x0

    iget v2, p0, Llewa/widget/ArrowPageHeader;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 207
    const/high16 v1, 0x7700

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0, v0, p1}, Llewa/widget/ArrowPageHeader;->addView(Landroid/view/View;I)V

    .line 210
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 431
    iget-boolean v0, p0, Llewa/widget/ArrowPageHeader;->mShowTopShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/ArrowPageHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 432
    :cond_0
    iget-boolean v0, p0, Llewa/widget/ArrowPageHeader;->mShowBottomBar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Llewa/widget/ArrowPageHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 433
    :cond_1
    iget-boolean v0, p0, Llewa/widget/ArrowPageHeader;->mShowTab:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Llewa/widget/ArrowPageHeader;->mTabDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    :cond_2
    return-void
.end method

.method public getChangeOnClick()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Llewa/widget/ArrowPageHeader;->mChangeOnClick:Z

    return v0
.end method

.method public getDisplayedPage()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 394
    sub-int v2, p4, p2

    .line 395
    .local v2, right:I
    sub-int v0, p5, p3

    .line 396
    .local v0, height:I
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v9

    sget v10, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v9, v10

    div-int v8, v2, v9

    .line 397
    .local v8, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v9

    sget v10, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v9, v10

    if-ge v1, v9, :cond_0

    .line 401
    invoke-virtual {p0, v1}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 402
    .local v5, view:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    .line 403
    .local v7, viewWidth:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 404
    .local v6, viewHeight:I
    div-int/lit8 v9, v0, 0x2

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v10

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v11

    mul-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v6, v10

    sub-int v4, v9, v10

    .line 406
    .local v4, textTop:I
    mul-int v9, v8, v1

    sub-int v10, v8, v7

    div-int/lit8 v10, v10, 0x2

    add-int v3, v9, v10

    .line 407
    .local v3, textLeft:I
    add-int v9, v3, v7

    add-int v10, v4, v6

    invoke-virtual {v5, v3, v4, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v3           #textLeft:I
    .end local v4           #textTop:I
    .end local v5           #view:Landroid/widget/TextView;
    .end local v6           #viewHeight:I
    .end local v7           #viewWidth:I
    :cond_0
    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorImageView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    iget v11, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    sub-int v11, v0, v11

    invoke-virtual {v9, v10, v11, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 416
    iget v9, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Llewa/widget/ArrowPageHeader;->setPosition(IFI)V

    .line 418
    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mShadow:Landroid/graphics/drawable/GradientDrawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Llewa/widget/ArrowPageHeader;->mShadowHeight:I

    invoke-virtual {v9, v10, v11, v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 419
    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mBottomBar:Landroid/graphics/drawable/ShapeDrawable;

    const/4 v10, 0x0

    iget v11, p0, Llewa/widget/ArrowPageHeader;->mBottomBarHeight:I

    sub-int v11, v0, v11

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v0, -0x1

    invoke-virtual {v9, v10, v11, v2, v12}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 421
    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLeft:Landroid/graphics/drawable/GradientDrawable;

    const/4 v10, 0x0

    iget v11, p0, Llewa/widget/ArrowPageHeader;->mShadowHeight:I

    iget v12, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLength:I

    iget v13, p0, Llewa/widget/ArrowPageHeader;->mBottomBarHeight:I

    sub-int v13, v0, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 422
    iget-object v9, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeRight:Landroid/graphics/drawable/GradientDrawable;

    iget v10, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLength:I

    sub-int v10, v2, v10

    iget v11, p0, Llewa/widget/ArrowPageHeader;->mShadowHeight:I

    iget v12, p0, Llewa/widget/ArrowPageHeader;->mBottomBarHeight:I

    sub-int v12, v0, v12

    invoke-virtual {v9, v10, v11, v2, v12}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 424
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, textHeight:I
    const/4 v5, 0x0

    .line 375
    .local v5, textWidth:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v8

    sget v9, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v8, v9

    if-ge v3, v8, :cond_0

    .line 376
    invoke-virtual {p0, v3}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 377
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, v10, v10}, Landroid/view/View;->measure(II)V

    .line 378
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 379
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 375
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget v8, p0, Llewa/widget/ArrowPageHeader;->mFadingEdgeLength:I

    mul-int/lit8 v8, v8, 0x2

    add-int v1, v5, v8

    .line 383
    .local v1, desiredWidth:I
    invoke-static {v1, p1}, Llewa/widget/ArrowPageHeader;->resolveSize(II)I

    move-result v7

    .line 385
    .local v7, width:I
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/ArrowPageHeader;->mShadowHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/ArrowPageHeader;->mIndicatorHeight:I

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/ArrowPageHeader;->mIndicatorPadding:I

    add-int/2addr v8, v9

    iget v9, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    add-int v0, v8, v9

    .line 387
    .local v0, desiredHeight:I
    invoke-static {v0, p2}, Llewa/widget/ArrowPageHeader;->resolveSize(II)I

    move-result v2

    .line 389
    .local v2, height:I
    invoke-virtual {p0, v7, v2}, Llewa/widget/ArrowPageHeader;->setMeasuredDimension(II)V

    .line 390
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 439
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 440
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 442
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 471
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 467
    :pswitch_1
    invoke-direct {p0, p1}, Llewa/widget/ArrowPageHeader;->onHeaderClick(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setChangeOnClick(Z)V
    .locals 0
    .parameter "changeOnClick"

    .prologue
    .line 238
    iput-boolean p1, p0, Llewa/widget/ArrowPageHeader;->mChangeOnClick:Z

    .line 239
    return-void
.end method

.method public setDisplayedPage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 216
    iput p1, p0, Llewa/widget/ArrowPageHeader;->mDisplayedPage:I

    .line 217
    return-void
.end method

.method public setOnHeaderClickListener(Llewa/widget/ArrowPageHeader$OnHeaderClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 231
    iput-object p1, p0, Llewa/widget/ArrowPageHeader;->mOnHeaderClickListener:Llewa/widget/ArrowPageHeader$OnHeaderClickListener;

    .line 232
    return-void
.end method

.method public setPosition(I)V
    .locals 10
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f80

    .line 359
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v4

    sget v5, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int v0, v4, v5

    .line 360
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 361
    invoke-virtual {p0, p1}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 362
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 363
    check-cast v3, Landroid/widget/TextView;

    .end local v3           #view:Landroid/view/View;
    if-ne v1, p1, :cond_1

    iget-object v4, p0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v4}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_1
    iget-object v4, p0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v4}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v4

    goto :goto_1

    .line 366
    :cond_2
    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v5

    sget v6, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v5, v6

    div-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    int-to-float v6, p1

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, p0, Llewa/widget/ArrowPageHeader;->mIndicatorWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 367
    .local v2, indicatorLeft:I
    iget-object v4, p0, Llewa/widget/ArrowPageHeader;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getHeight()I

    move-result v5

    iget v6, p0, Llewa/widget/ArrowPageHeader;->mIndicatorHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    sub-int/2addr v5, v6

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Llewa/widget/ArrowPageHeader;->mIndicatorWidth:I

    add-int/2addr v6, v2

    invoke-virtual {p0}, Llewa/widget/ArrowPageHeader;->getHeight()I

    move-result v7

    iget v8, p0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    sub-int/2addr v7, v8

    invoke-static {v9}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 369
    return-void
.end method

.method public setPosition(IFI)V
    .locals 17
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 249
    const-string v12, "ArrowPageHeader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pos = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Llewa/widget/ArrowPageHeader;->mTouchZonesAccurate:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getWidth()I

    move-result v11

    .line 252
    .local v11, width:I
    div-int/lit8 v2, v11, 0x2

    .line 255
    .local v2, center:I
    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v12

    sget v13, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_0

    invoke-virtual/range {p0 .. p1}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v12

    sget v13, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v12, v13

    move/from16 v0, p1

    if-ge v0, v12, :cond_2

    .line 263
    invoke-virtual/range {p0 .. p1}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 278
    .local v9, view:Landroid/widget/TextView;
    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v14, v14, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move-object/from16 v0, p0

    iget-object v15, v0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v15, v15, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Llewa/widget/ArrowPageHeader;->map(FFFII)I

    move-result v1

    .line 279
    .local v1, alpha:I
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v12, v1}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    .end local v1           #alpha:I
    .end local v9           #view:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v12, p1, 0x1

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v13

    sget v14, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_3

    .line 285
    add-int/lit8 v12, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 297
    .restart local v9       #view:Landroid/widget/TextView;
    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v14, v14, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move-object/from16 v0, p0

    iget-object v15, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v15, v15, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Llewa/widget/ArrowPageHeader;->map(FFFII)I

    move-result v1

    .line 298
    .restart local v1       #alpha:I
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v12, v1}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    .end local v1           #alpha:I
    .end local v9           #view:Landroid/widget/TextView;
    :cond_3
    if-lez p1, :cond_5

    .line 304
    add-int/lit8 v12, p1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 305
    .restart local v9       #view:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 306
    .local v8, plusOneLeft:I
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    .line 307
    .local v7, newLeft:I
    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    .line 308
    .local v10, viewWidth:I
    add-int v12, v7, v10

    move-object/from16 v0, p0

    iget v13, v0, Llewa/widget/ArrowPageHeader;->mPaddingPush:I

    add-int/2addr v12, v13

    if-lt v8, v12, :cond_4

    if-gez v7, :cond_5

    .line 311
    :cond_4
    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v14, v14, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move-object/from16 v0, p0

    iget-object v15, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v15, v15, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Llewa/widget/ArrowPageHeader;->map(FFFII)I

    .line 316
    .end local v7           #newLeft:I
    .end local v8           #plusOneLeft:I
    .end local v9           #view:Landroid/widget/TextView;
    .end local v10           #viewWidth:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v12

    sget v13, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int v3, v12, v13

    .line 317
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_7

    .line 318
    move/from16 v0, p1

    if-eq v4, v0, :cond_6

    add-int/lit8 v12, p1, -0x1

    if-eq v4, v12, :cond_6

    add-int/lit8 v12, p1, 0x1

    if-eq v4, v12, :cond_6

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 320
    .restart local v9       #view:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    invoke-virtual {v12}, Llewa/widget/ArrowPageHeader$ColorSet;->getColor()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    .end local v9           #view:Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    :cond_7
    add-int/lit8 v12, p1, 0x2

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v13

    sget v14, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_9

    .line 327
    add-int/lit8 v12, p1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 328
    .restart local v9       #view:Landroid/widget/TextView;
    add-int/lit8 v12, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v6

    .line 329
    .local v6, minusOneRight:I
    invoke-virtual {v9}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    .line 330
    .restart local v7       #newLeft:I
    invoke-virtual {v9}, Landroid/widget/TextView;->getWidth()I

    move-result v10

    .line 331
    .restart local v10       #viewWidth:I
    move-object/from16 v0, p0

    iget v12, v0, Llewa/widget/ArrowPageHeader;->mPaddingPush:I

    sub-int v12, v7, v12

    if-gt v6, v12, :cond_8

    add-int v12, v7, v10

    if-le v12, v11, :cond_9

    .line 332
    :cond_8
    const-string v12, "ArrowPageHeader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pos4  mPaddingPush = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Llewa/widget/ArrowPageHeader;->mPaddingPush:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "minusOneRight"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "newLeft"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v12, 0x0

    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iget-object v14, v0, Llewa/widget/ArrowPageHeader;->mInactiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v14, v14, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move-object/from16 v0, p0

    iget-object v15, v0, Llewa/widget/ArrowPageHeader;->mActiveTextColor:Llewa/widget/ArrowPageHeader$ColorSet;

    iget v15, v15, Llewa/widget/ArrowPageHeader$ColorSet;->alpha:I

    move/from16 v0, p2

    invoke-static {v0, v12, v13, v14, v15}, Llewa/widget/ArrowPageHeader;->map(FFFII)I

    .line 342
    .end local v6           #minusOneRight:I
    .end local v7           #newLeft:I
    .end local v9           #view:Landroid/widget/TextView;
    .end local v10           #viewWidth:I
    :cond_9
    const/high16 v12, 0x3f00

    cmpg-float v12, p2, v12

    if-gez v12, :cond_a

    move/from16 v12, p1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Llewa/widget/ArrowPageHeader;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 353
    .local v9, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getChildCount()I

    move-result v13

    sget v14, Llewa/widget/ArrowPageHeader;->INVALID_VIEW_SIZE:I

    sub-int/2addr v13, v14

    div-int/2addr v12, v13

    int-to-float v12, v12

    const/high16 v13, 0x3f00

    add-float v13, v13, p2

    move/from16 v0, p1

    int-to-float v14, v0

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Llewa/widget/ArrowPageHeader;->mIndicatorWidth:I

    div-int/lit8 v13, v13, 0x2

    sub-int v5, v12, v13

    .line 354
    .local v5, indicatorLeft:I
    move-object/from16 v0, p0

    iget-object v12, v0, Llewa/widget/ArrowPageHeader;->mIndicatorImageView:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Llewa/widget/ArrowPageHeader;->mIndicatorHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    sub-int/2addr v13, v14

    const/high16 v14, 0x3f80

    invoke-static {v14}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Llewa/widget/ArrowPageHeader;->mIndicatorWidth:I

    add-int/2addr v14, v5

    invoke-virtual/range {p0 .. p0}, Llewa/widget/ArrowPageHeader;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/ArrowPageHeader;->mBgIndicatorHeight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    const/high16 v16, 0x3f80

    invoke-static/range {v16 .. v16}, Llewa/widget/ArrowPageHeader;->dipToPixels(F)I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v12, v5, v13, v14, v15}, Landroid/widget/ImageView;->layout(IIII)V

    goto/16 :goto_0

    .line 342
    .end local v5           #indicatorLeft:I
    .end local v9           #view:Landroid/view/View;
    :cond_a
    add-int/lit8 v12, p1, 0x1

    goto :goto_2
.end method
