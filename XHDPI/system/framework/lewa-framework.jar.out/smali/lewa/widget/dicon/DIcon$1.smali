.class Llewa/widget/dicon/DIcon$1;
.super Landroid/database/ContentObserver;
.source "DIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/widget/dicon/DIcon;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/widget/dicon/DIcon;


# direct methods
.method constructor <init>(Llewa/widget/dicon/DIcon;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 119
    iput-object p1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 125
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Llewa/widget/dicon/DIcon;->access$000(Llewa/widget/dicon/DIcon;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Llewa/widget/dicon/DIcon;->access$000(Llewa/widget/dicon/DIcon;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1}, Llewa/widget/dicon/DIcon;->access$000(Llewa/widget/dicon/DIcon;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    const/4 v2, 0x0

    #setter for: Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Llewa/widget/dicon/DIcon;->access$002(Llewa/widget/dicon/DIcon;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 129
    :cond_0
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    iget-object v2, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    invoke-virtual {v2}, Llewa/widget/dicon/DIcon;->updateBinderContent()Z

    move-result v2

    #setter for: Llewa/widget/dicon/DIcon;->mContentReady:Z
    invoke-static {v1, v2}, Llewa/widget/dicon/DIcon;->access$102(Llewa/widget/dicon/DIcon;Z)Z

    .line 130
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    invoke-virtual {v1}, Llewa/widget/dicon/DIcon;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;
    invoke-static {v1}, Llewa/widget/dicon/DIcon;->access$200(Llewa/widget/dicon/DIcon;)Llewa/widget/dicon/DIcon$IconChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;
    invoke-static {v1}, Llewa/widget/dicon/DIcon;->access$200(Llewa/widget/dicon/DIcon;)Llewa/widget/dicon/DIcon$IconChangeListener;

    move-result-object v1

    iget-object v2, p0, Llewa/widget/dicon/DIcon$1;->this$0:Llewa/widget/dicon/DIcon;

    #getter for: Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;
    invoke-static {v2}, Llewa/widget/dicon/DIcon;->access$300(Llewa/widget/dicon/DIcon;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Llewa/widget/dicon/DIcon$IconChangeListener;->OnChange(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 134
    :cond_1
    return-void
.end method
