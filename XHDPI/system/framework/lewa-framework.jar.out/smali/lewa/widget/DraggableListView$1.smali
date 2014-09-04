.class Llewa/widget/DraggableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DraggableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/widget/DraggableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/DraggableListView;


# direct methods
.method constructor <init>(Llewa/widget/DraggableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #getter for: Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Llewa/widget/DraggableListView;->access$000(Llewa/widget/DraggableListView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 119
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #getter for: Llewa/widget/DraggableListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Llewa/widget/DraggableListView;->access$100(Llewa/widget/DraggableListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 120
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #getter for: Llewa/widget/DraggableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Llewa/widget/DraggableListView;->access$000(Llewa/widget/DraggableListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 123
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #calls: Llewa/widget/DraggableListView;->stopDragging()V
    invoke-static {v2}, Llewa/widget/DraggableListView;->access$200(Llewa/widget/DraggableListView;)V

    .line 124
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #getter for: Llewa/widget/DraggableListView;->mRemoveListener:Llewa/widget/DraggableListView$RemoveListener;
    invoke-static {v2}, Llewa/widget/DraggableListView;->access$400(Llewa/widget/DraggableListView;)Llewa/widget/DraggableListView$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #getter for: Llewa/widget/DraggableListView;->mSrcDragPos:I
    invoke-static {v3}, Llewa/widget/DraggableListView;->access$300(Llewa/widget/DraggableListView;)I

    move-result v3

    invoke-interface {v2, v3}, Llewa/widget/DraggableListView$RemoveListener;->remove(I)V

    .line 125
    iget-object v2, p0, Llewa/widget/DraggableListView$1;->this$0:Llewa/widget/DraggableListView;

    #calls: Llewa/widget/DraggableListView;->unExpandViews(Z)V
    invoke-static {v2, v1}, Llewa/widget/DraggableListView;->access$500(Llewa/widget/DraggableListView;Z)V

    .line 131
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
