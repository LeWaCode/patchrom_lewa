.class public Llewa/widget/DraggableListView;
.super Landroid/widget/ListView;
.source "DraggableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/DraggableListView$RemoveListener;,
        Llewa/widget/DraggableListView$DropListener;,
        Llewa/widget/DraggableListView$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final LAST_BUT_ONE_POSITION:I = 0x2

.field private static final MIN_MOVE_DIV:I = 0x3

.field private static final SLIDE:I = 0x1

.field private static final TRASH:I = 0x2


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Llewa/widget/DraggableListView$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Llewa/widget/DraggableListView$DropListener;

.field private mFixedItem:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mSrcDragPosition:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/widget/DraggableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Llewa/widget/DraggableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v2, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llewa/widget/DraggableListView;->mTempRect:Landroid/graphics/Rect;

    .line 72
    iput v2, p0, Llewa/widget/DraggableListView;->mFixedItem:I

    .line 85
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Llewa/widget/DraggableListView;->mTouchSlop:I

    .line 86
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x90b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    .line 88
    iget v1, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Llewa/widget/DraggableListView;->mItemHeightHalf:I

    .line 89
    const v1, 0x90b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Llewa/widget/DraggableListView;->mItemHeightExpanded:I

    .line 91
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 93
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 94
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    iget-object v1, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 106
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Llewa/widget/DraggableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 107
    return-void
.end method

.method static synthetic access$000(Llewa/widget/DraggableListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Llewa/widget/DraggableListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Llewa/widget/DraggableListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Llewa/widget/DraggableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Llewa/widget/DraggableListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Llewa/widget/DraggableListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Llewa/widget/DraggableListView;)Llewa/widget/DraggableListView$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Llewa/widget/DraggableListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Llewa/widget/DraggableListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 232
    iget v0, p0, Llewa/widget/DraggableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 233
    iget v0, p0, Llewa/widget/DraggableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Llewa/widget/DraggableListView;->mUpperBound:I

    .line 235
    :cond_0
    iget v0, p0, Llewa/widget/DraggableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 236
    iget v0, p0, Llewa/widget/DraggableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Llewa/widget/DraggableListView;->mLowerBound:I

    .line 238
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 291
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 292
    .local v0, childnum:I
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    iget v9, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 295
    :cond_0
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getHeaderViewsCount()I

    move-result v4

    .line 297
    .local v4, numheaders:I
    iget v8, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 299
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 300
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 341
    return-void

    .line 305
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, p0, Llewa/widget/DraggableListView;->mItemHeightHalf:I

    if-gt v8, v9, :cond_2

    .line 298
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_2
    iget v2, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    .line 310
    .local v2, height:I
    const/4 v6, 0x0

    .line 311
    .local v6, visibility:I
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    if-ge v8, v4, :cond_5

    if-ne v3, v4, :cond_5

    .line 314
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 315
    const/4 v6, 0x4

    .line 336
    :cond_3
    :goto_2
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 337
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 317
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v2, p0, Llewa/widget/DraggableListView;->mItemHeightExpanded:I

    goto :goto_2

    .line 319
    :cond_5
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 321
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    iget v9, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    if-eq v8, v9, :cond_6

    invoke-virtual {p0, v7}, Llewa/widget/DraggableListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_7

    .line 323
    :cond_6
    const/4 v6, 0x4

    goto :goto_2

    .line 329
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 331
    :cond_8
    if-ne v3, v0, :cond_3

    .line 332
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    if-lt v8, v4, :cond_3

    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_3

    .line 333
    iget v2, p0, Llewa/widget/DraggableListView;->mItemHeightExpanded:I

    goto :goto_2
.end method

.method private dragView(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 433
    iget v2, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    if-ne v2, v5, :cond_1

    .line 434
    const/high16 v0, 0x3f80

    .line 435
    .local v0, alpha:F
    iget-object v2, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 436
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 437
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 439
    :cond_0
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 442
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget v2, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    if-ne v2, v6, :cond_4

    .line 443
    :cond_2
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Llewa/widget/DraggableListView;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Llewa/widget/DraggableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 448
    :goto_0
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Llewa/widget/DraggableListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Llewa/widget/DraggableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 449
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 452
    iget-object v2, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 453
    .restart local v1       #width:I
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_5

    .line 454
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 461
    .end local v1           #width:I
    :cond_3
    :goto_1
    return-void

    .line 445
    :cond_4
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getListPaddingLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 455
    .restart local v1       #width:I
    :cond_5
    if-lez v1, :cond_6

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_6

    .line 456
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 458
    :cond_6
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 210
    iget v2, p0, Llewa/widget/DraggableListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Llewa/widget/DraggableListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 211
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Llewa/widget/DraggableListView;->myPointToPosition(II)I

    move-result v1

    .line 212
    .local v1, pos:I
    if-ltz v1, :cond_2

    .line 213
    iget v2, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 223
    :cond_0
    :goto_0
    iget v2, p0, Llewa/widget/DraggableListView;->mHeight:I

    iget v3, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_1

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    iget v2, p0, Llewa/widget/DraggableListView;->mSrcDragPosition:I

    iget v3, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_1

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 228
    :cond_1
    return v1

    .line 216
    :cond_2
    if-gez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    if-gez p2, :cond_0

    .line 190
    iget v5, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Llewa/widget/DraggableListView;->myPointToPosition(II)I

    move-result v4

    .line 191
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 192
    add-int/lit8 v5, v4, -0x1

    .line 206
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 196
    :cond_0
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTempRect:Landroid/graphics/Rect;

    .line 197
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getChildCount()I

    move-result v1

    .line 198
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 199
    invoke-virtual {p0, v3}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 202
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getListPaddingLeft()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v2, v5, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 198
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 206
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 6
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 414
    invoke-direct {p0}, Llewa/widget/DraggableListView;->stopDragging()V

    .line 416
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Llewa/widget/DraggableListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Llewa/widget/DraggableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 417
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Llewa/widget/DraggableListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Llewa/widget/DraggableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 419
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v1, v:Landroid/widget/ImageView;
    const v2, 0x908009c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 424
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 425
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    iput-object p1, p0, Llewa/widget/DraggableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 428
    iget-object v2, p0, Llewa/widget/DraggableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Llewa/widget/DraggableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iput-object v1, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    .line 430
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 464
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Llewa/widget/DraggableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    iput-object v2, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    .line 470
    :cond_0
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Llewa/widget/DraggableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 472
    iput-object v2, p0, Llewa/widget/DraggableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 474
    :cond_1
    iget-object v0, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 477
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 8
    .parameter "deletion"

    .prologue
    const/4 v7, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 247
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 250
    .local v2, position:I
    invoke-virtual {p0, v7}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 251
    .local v4, y:I
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Llewa/widget/DraggableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    invoke-virtual {p0, v2, v4}, Llewa/widget/DraggableListView;->setSelectionFromTop(II)V

    .line 256
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->layoutChildren()V

    .line 257
    invoke-virtual {p0, v0}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 263
    :goto_1
    if-nez v3, :cond_1

    .line 264
    return-void

    .line 268
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Llewa/widget/DraggableListView;->mItemHeightHalf:I

    if-gt v5, v6, :cond_2

    .line 244
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 272
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Llewa/widget/DraggableListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 258
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/16 v11, 0x40

    const/4 v7, 0x0

    .line 111
    iget-object v8, p0, Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

    if-eqz v8, :cond_0

    iget-object v8, p0, Llewa/widget/DraggableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_0

    .line 112
    iget v8, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    if-nez v8, :cond_0

    .line 113
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Llewa/widget/DraggableListView$1;

    invoke-direct {v10, p0}, Llewa/widget/DraggableListView$1;-><init>(Llewa/widget/DraggableListView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Llewa/widget/DraggableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 136
    :cond_0
    iget-object v8, p0, Llewa/widget/DraggableListView;->mDragListener:Llewa/widget/DraggableListView$DragListener;

    if-nez v8, :cond_1

    iget-object v8, p0, Llewa/widget/DraggableListView;->mDropListener:Llewa/widget/DraggableListView$DropListener;

    if-eqz v8, :cond_2

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 178
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 139
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 140
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 141
    .local v6, y:I
    invoke-virtual {p0, v5, v6}, Llewa/widget/DraggableListView;->pointToPosition(II)I

    move-result v3

    .line 142
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2

    .line 145
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 146
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v8

    sub-int v8, v5, v8

    iput v8, p0, Llewa/widget/DraggableListView;->mDragPointX:I

    .line 147
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v6, v8

    iput v8, p0, Llewa/widget/DraggableListView;->mDragPointY:I

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v5

    iput v8, p0, Llewa/widget/DraggableListView;->mXOffset:I

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v6

    iput v8, p0, Llewa/widget/DraggableListView;->mYOffset:I

    .line 150
    const/high16 v8, 0x902

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, dragger:Landroid/view/View;
    if-nez v1, :cond_4

    if-ge v5, v11, :cond_5

    .line 159
    :cond_3
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 160
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 163
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput v6, p0, Llewa/widget/DraggableListView;->mSrcDragPosition:I

    .line 165
    invoke-direct {p0, v0, v5, v6}, Llewa/widget/DraggableListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 166
    iput v3, p0, Llewa/widget/DraggableListView;->mDragPos:I

    .line 167
    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    iput v8, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    .line 168
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getHeight()I

    move-result v8

    iput v8, p0, Llewa/widget/DraggableListView;->mHeight:I

    .line 169
    iget v4, p0, Llewa/widget/DraggableListView;->mTouchSlop:I

    .line 170
    .local v4, touchSlop:I
    sub-int v8, v6, v4

    iget v9, p0, Llewa/widget/DraggableListView;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Llewa/widget/DraggableListView;->mUpperBound:I

    .line 171
    add-int v8, v6, v4

    iget v9, p0, Llewa/widget/DraggableListView;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Llewa/widget/DraggableListView;->mLowerBound:I

    goto/16 :goto_1

    .line 154
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #touchSlop:I
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    if-ge v8, v11, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    if-lt v5, v8, :cond_3

    .line 174
    :cond_5
    invoke-direct {p0}, Llewa/widget/DraggableListView;->stopDragging()V

    goto/16 :goto_0

    .line 154
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/lit8 v8, v8, -0x14

    if-le v5, v8, :cond_5

    goto :goto_2

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 345
    iget-object v7, p0, Llewa/widget/DraggableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    .line 346
    iget-object v7, p0, Llewa/widget/DraggableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    :cond_0
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDragListener:Llewa/widget/DraggableListView$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Llewa/widget/DraggableListView;->mDropListener:Llewa/widget/DraggableListView$DropListener;

    if-eqz v7, :cond_e

    :cond_1
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v7, :cond_e

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 350
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 410
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v6

    .line 353
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Llewa/widget/DraggableListView;->mTempRect:Landroid/graphics/Rect;

    .line 354
    .local v2, r:Landroid/graphics/Rect;
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 355
    invoke-direct {p0}, Llewa/widget/DraggableListView;->stopDragging()V

    .line 356
    iget v7, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    if-ne v7, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 357
    iget-object v7, p0, Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

    if-eqz v7, :cond_3

    .line 358
    iget-object v7, p0, Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

    iget v8, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    invoke-interface {v7, v8}, Llewa/widget/DraggableListView$RemoveListener;->remove(I)V

    .line 360
    :cond_3
    invoke-direct {p0, v6}, Llewa/widget/DraggableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 362
    :cond_4
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDropListener:Llewa/widget/DraggableListView$DropListener;

    if-eqz v7, :cond_5

    iget v7, p0, Llewa/widget/DraggableListView;->mDragPos:I

    if-ltz v7, :cond_5

    iget v7, p0, Llewa/widget/DraggableListView;->mDragPos:I

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 363
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDropListener:Llewa/widget/DraggableListView$DropListener;

    iget v8, p0, Llewa/widget/DraggableListView;->mSrcDragPos:I

    iget v9, p0, Llewa/widget/DraggableListView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Llewa/widget/DraggableListView$DropListener;->drop(II)V

    .line 365
    :cond_5
    invoke-direct {p0, v10}, Llewa/widget/DraggableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 370
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 371
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 372
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Llewa/widget/DraggableListView;->dragView(II)V

    .line 373
    invoke-direct {p0, v5}, Llewa/widget/DraggableListView;->getItemForPosition(I)I

    move-result v1

    .line 374
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 375
    if-eqz v0, :cond_6

    iget v7, p0, Llewa/widget/DraggableListView;->mDragPos:I

    if-eq v1, v7, :cond_8

    .line 376
    :cond_6
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDragListener:Llewa/widget/DraggableListView$DragListener;

    if-eqz v7, :cond_7

    .line 377
    iget-object v7, p0, Llewa/widget/DraggableListView;->mDragListener:Llewa/widget/DraggableListView$DragListener;

    iget v8, p0, Llewa/widget/DraggableListView;->mDragPos:I

    invoke-interface {v7, v8, v1}, Llewa/widget/DraggableListView$DragListener;->drag(II)V

    .line 379
    :cond_7
    iput v1, p0, Llewa/widget/DraggableListView;->mDragPos:I

    .line 380
    invoke-direct {p0}, Llewa/widget/DraggableListView;->doExpansion()V

    .line 382
    :cond_8
    const/4 v3, 0x0

    .line 383
    .local v3, speed:I
    invoke-direct {p0, v5}, Llewa/widget/DraggableListView;->adjustScrollBounds(I)V

    .line 384
    iget v7, p0, Llewa/widget/DraggableListView;->mLowerBound:I

    if-le v5, v7, :cond_c

    .line 386
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_b

    .line 387
    iget v7, p0, Llewa/widget/DraggableListView;->mHeight:I

    iget v8, p0, Llewa/widget/DraggableListView;->mLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_a

    const/16 v3, 0x10

    .line 402
    :cond_9
    :goto_1
    if-eqz v3, :cond_2

    .line 403
    const/16 v7, 0x1e

    invoke-virtual {p0, v3, v7}, Llewa/widget/DraggableListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 387
    :cond_a
    const/4 v3, 0x4

    goto :goto_1

    .line 389
    :cond_b
    const/4 v3, 0x1

    goto :goto_1

    .line 391
    :cond_c
    iget v7, p0, Llewa/widget/DraggableListView;->mUpperBound:I

    if-ge v5, v7, :cond_9

    .line 393
    iget v7, p0, Llewa/widget/DraggableListView;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_d

    const/16 v3, -0x10

    .line 394
    :goto_2
    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0, v10}, Llewa/widget/DraggableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Llewa/widget/DraggableListView;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_9

    .line 399
    const/4 v3, 0x0

    goto :goto_1

    .line 393
    :cond_d
    const/4 v3, -0x4

    goto :goto_2

    .line 410
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:I
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Llewa/widget/DraggableListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 489
    iput-object p1, p0, Llewa/widget/DraggableListView;->mDragListener:Llewa/widget/DraggableListView$DragListener;

    .line 490
    return-void
.end method

.method public setDropListener(Llewa/widget/DraggableListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 496
    iput-object p1, p0, Llewa/widget/DraggableListView;->mDropListener:Llewa/widget/DraggableListView$DropListener;

    .line 497
    return-void
.end method

.method public setFixedItem(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 544
    iput p1, p0, Llewa/widget/DraggableListView;->mFixedItem:I

    .line 545
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .parameter "height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    return-void
.end method

.method public setRemoveListener(Llewa/widget/DraggableListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 500
    iput-object p1, p0, Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;

    .line 501
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "trash"

    .prologue
    .line 480
    iput-object p1, p0, Llewa/widget/DraggableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 481
    const/4 v0, 0x2

    iput v0, p0, Llewa/widget/DraggableListView;->mRemoveMode:I

    .line 482
    return-void
.end method

.method public setWindowType(I)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 538
    return-void
.end method
