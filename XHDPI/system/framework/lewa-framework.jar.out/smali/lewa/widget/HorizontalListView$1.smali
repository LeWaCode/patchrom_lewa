.class Llewa/widget/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/HorizontalListView;


# direct methods
.method constructor <init>(Llewa/widget/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    const/4 v2, 0x1

    #setter for: Llewa/widget/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v2}, Llewa/widget/HorizontalListView;->access$002(Llewa/widget/HorizontalListView;Z)Z

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->invalidate()V

    .line 114
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->requestLayout()V

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    #calls: Llewa/widget/HorizontalListView;->reset()V
    invoke-static {v0}, Llewa/widget/HorizontalListView;->access$100(Llewa/widget/HorizontalListView;)V

    .line 120
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->invalidate()V

    .line 121
    iget-object v0, p0, Llewa/widget/HorizontalListView$1;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->requestLayout()V

    .line 122
    return-void
.end method
