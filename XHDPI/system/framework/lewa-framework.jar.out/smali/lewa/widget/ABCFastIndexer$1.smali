.class Llewa/widget/ABCFastIndexer$1;
.super Ljava/lang/Object;
.source "ABCFastIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/widget/ABCFastIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/ABCFastIndexer;


# direct methods
.method constructor <init>(Llewa/widget/ABCFastIndexer;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Llewa/widget/ABCFastIndexer$1;->this$0:Llewa/widget/ABCFastIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Llewa/widget/ABCFastIndexer$1;->this$0:Llewa/widget/ABCFastIndexer;

    #getter for: Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;
    invoke-static {v0}, Llewa/widget/ABCFastIndexer;->access$000(Llewa/widget/ABCFastIndexer;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    return-void
.end method
