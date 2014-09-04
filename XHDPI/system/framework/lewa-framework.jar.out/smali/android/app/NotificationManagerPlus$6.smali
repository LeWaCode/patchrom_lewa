.class Landroid/app/NotificationManagerPlus$6;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NotificationManagerPlus;


# direct methods
.method constructor <init>(Landroid/app/NotificationManagerPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 6
    .parameter "dialog"

    .prologue
    .line 274
    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Landroid/app/NotificationManagerPlus$DialogPlus;

    move-object v2, v0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 276
    .local v1, add:Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v2

    iget-object v2, v2, Landroid/app/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v2

    iget-object v2, v2, Landroid/app/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

    invoke-interface {v2, p1}, Landroid/app/NotificationManagerPlus$OnFirstShowListener;->onFirstShow(Landroid/content/DialogInterface;)V

    .line 279
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v2

    iget-object v2, v2, Landroid/app/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mParams:Landroid/app/NotificationManagerPlus$Parameters;
    invoke-static {v2}, Landroid/app/NotificationManagerPlus;->access$400(Landroid/app/NotificationManagerPlus;)Landroid/app/NotificationManagerPlus$Parameters;

    move-result-object v2

    iget-object v2, v2, Landroid/app/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    invoke-interface {v2, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    .line 282
    :cond_1
    const-string v2, "NotificationManangerPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShow() size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/NotificationManagerPlus$6;->this$0:Landroid/app/NotificationManagerPlus;

    #getter for: Landroid/app/NotificationManagerPlus;->mList:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/app/NotificationManagerPlus;->access$300(Landroid/app/NotificationManagerPlus;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", add="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v3

    .line 284
    return-void

    .line 283
    .end local v1           #add:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
