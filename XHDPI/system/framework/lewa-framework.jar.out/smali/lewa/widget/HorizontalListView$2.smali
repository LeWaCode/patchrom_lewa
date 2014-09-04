.class Llewa/widget/HorizontalListView$2;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/widget/HorizontalListView;->onLayout(ZIIII)V
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
    .line 224
    iput-object p1, p0, Llewa/widget/HorizontalListView$2;->this$0:Llewa/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Llewa/widget/HorizontalListView$2;->this$0:Llewa/widget/HorizontalListView;

    invoke-virtual {v0}, Llewa/widget/HorizontalListView;->requestLayout()V

    .line 228
    return-void
.end method
