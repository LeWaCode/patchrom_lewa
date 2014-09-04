.class public Llewa/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mInitialX:F

.field private mInitialY:F

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    .line 28
    iput v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    .line 31
    const v0, 0x7fffffff

    iput v0, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    .line 32
    iput v1, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Llewa/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 56
    iput-boolean v1, p0, Llewa/widget/HorizontalListView;->mDataChanged:Z

    .line 107
    new-instance v0, Llewa/widget/HorizontalListView$1;

    invoke-direct {v0, p0}, Llewa/widget/HorizontalListView$1;-><init>(Llewa/widget/HorizontalListView;)V

    iput-object v0, p0, Llewa/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 370
    new-instance v0, Llewa/widget/HorizontalListView$3;

    invoke-direct {v0, p0}, Llewa/widget/HorizontalListView$3;-><init>(Llewa/widget/HorizontalListView;)V

    iput-object v0, p0, Llewa/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 60
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 61
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Llewa/widget/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llewa/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    .line 62
    invoke-direct {p0}, Llewa/widget/HorizontalListView;->initView()V

    .line 63
    return-void
.end method

.method static synthetic access$002(Llewa/widget/HorizontalListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Llewa/widget/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$100(Llewa/widget/HorizontalListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Llewa/widget/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Llewa/widget/HorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$400(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$500(Llewa/widget/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "viewPos"

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x8000

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 180
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Llewa/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 181
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 183
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .parameter "dx"

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, edge:I
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 239
    :cond_0
    invoke-direct {p0, v1, p1}, Llewa/widget/HorizontalListView;->fillListRight(II)V

    .line 241
    const/4 v1, 0x0

    .line 242
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 246
    :cond_1
    invoke-direct {p0, v1, p1}, Llewa/widget/HorizontalListView;->fillListLeft(II)V

    .line 247
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 267
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    if-ltz v1, :cond_0

    .line 268
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Llewa/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llewa/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 271
    iget v1, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    .line 272
    iget v1, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 274
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 250
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 251
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Llewa/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Llewa/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 253
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 255
    iget v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 256
    iget v1, p0, Llewa/widget/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    .line 259
    :cond_0
    iget v1, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_1

    .line 260
    const/4 v1, 0x0

    iput v1, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    .line 262
    :cond_1
    iget v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    goto :goto_0

    .line 264
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private declared-synchronized initView()V
    .locals 1

    .prologue
    .line 66
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/HorizontalListView;->mCurrentX:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 71
    const v0, 0x7fffffff

    iput v0, p0, Llewa/widget/HorizontalListView;->mMaxX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .parameter "dx"

    .prologue
    .line 296
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 297
    iget v4, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    .line 298
    iget v3, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    .line 299
    .local v3, left:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 300
    invoke-virtual {p0, v2}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 301
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 302
    .local v1, childWidth:I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidth:I
    .end local v2           #i:I
    .end local v3           #left:I
    :cond_0
    return-void
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0, v3}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 279
    iget v1, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Llewa/widget/HorizontalListView;->mDisplayOffset:I

    .line 280
    iget-object v1, p0, Llewa/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {p0, v0}, Llewa/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 282
    iget v1, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llewa/widget/HorizontalListView;->mLeftViewIndex:I

    .line 283
    invoke-virtual {p0, v3}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Llewa/widget/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p0, v0}, Llewa/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 290
    iget v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Llewa/widget/HorizontalListView;->mRightViewIndex:I

    .line 291
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Llewa/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 293
    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llewa/widget/HorizontalListView;->initView()V

    .line 165
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 166
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 366
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 367
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Llewa/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 359
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->requestLayout()V

    .line 362
    const/4 v0, 0x1

    return v0

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x40a0

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 343
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 335
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Llewa/widget/HorizontalListView;->mInitialX:F

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Llewa/widget/HorizontalListView;->mInitialY:F

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Llewa/widget/HorizontalListView;->mInitialX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 340
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Llewa/widget/HorizontalListView;->mInitialY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 341
    .local v1, deltaY:F
    cmpl-float v3, v0, v5

    if-gtz v3, :cond_1

    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 190
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 231
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Llewa/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 195
    iget v1, p0, Llewa/widget/HorizontalListView;->mCurrentX:I

    .line 196
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Llewa/widget/HorizontalListView;->initView()V

    .line 197
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 198
    iput v1, p0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 199
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/widget/HorizontalListView;->mDataChanged:Z

    .line 202
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 206
    :cond_3
    iget v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    if-gtz v2, :cond_4

    .line 207
    const/4 v2, 0x0

    iput v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 208
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 210
    :cond_4
    iget v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    iget v3, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    if-lt v2, v3, :cond_5

    .line 211
    iget v2, p0, Llewa/widget/HorizontalListView;->mMaxX:I

    iput v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    .line 212
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 215
    :cond_5
    iget v2, p0, Llewa/widget/HorizontalListView;->mCurrentX:I

    iget v3, p0, Llewa/widget/HorizontalListView;->mNextX:I

    sub-int v0, v2, v3

    .line 217
    .local v0, dx:I
    invoke-direct {p0, v0}, Llewa/widget/HorizontalListView;->removeNonVisibleItems(I)V

    .line 218
    invoke-direct {p0, v0}, Llewa/widget/HorizontalListView;->fillList(I)V

    .line 219
    invoke-direct {p0, v0}, Llewa/widget/HorizontalListView;->positionItems(I)V

    .line 221
    iget v2, p0, Llewa/widget/HorizontalListView;->mNextX:I

    iput v2, p0, Llewa/widget/HorizontalListView;->mCurrentX:I

    .line 223
    iget-object v2, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    new-instance v2, Llewa/widget/HorizontalListView$2;

    invoke-direct {v2, p0}, Llewa/widget/HorizontalListView$2;-><init>(Llewa/widget/HorizontalListView;)V

    invoke-virtual {p0, v2}, Llewa/widget/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #dx:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 325
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized scrollTo(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Llewa/widget/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    iget v3, p0, Llewa/widget/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 316
    invoke-virtual {p0}, Llewa/widget/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Llewa/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 155
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Llewa/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 158
    :cond_0
    iput-object p1, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 159
    iget-object v0, p0, Llewa/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Llewa/widget/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 160
    invoke-direct {p0}, Llewa/widget/HorizontalListView;->reset()V

    .line 161
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 93
    iput-object p1, p0, Llewa/widget/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 94
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Llewa/widget/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 105
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Llewa/widget/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 83
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 172
    return-void
.end method
