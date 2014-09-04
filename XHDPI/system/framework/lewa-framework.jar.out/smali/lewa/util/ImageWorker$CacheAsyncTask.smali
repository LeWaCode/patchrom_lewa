.class public Llewa/util/ImageWorker$CacheAsyncTask;
.super Llewa/util/AsyncTask;
.source "ImageWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/ImageWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llewa/util/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llewa/util/ImageWorker;


# direct methods
.method protected constructor <init>(Llewa/util/ImageWorker;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Llewa/util/ImageWorker$CacheAsyncTask;->this$0:Llewa/util/ImageWorker;

    invoke-direct {p0}, Llewa/util/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Llewa/util/ImageWorker$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 549
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 563
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 551
    :pswitch_0
    iget-object v0, p0, Llewa/util/ImageWorker$CacheAsyncTask;->this$0:Llewa/util/ImageWorker;

    invoke-virtual {v0}, Llewa/util/ImageWorker;->clearCacheInternal()V

    goto :goto_0

    .line 554
    :pswitch_1
    iget-object v0, p0, Llewa/util/ImageWorker$CacheAsyncTask;->this$0:Llewa/util/ImageWorker;

    invoke-virtual {v0}, Llewa/util/ImageWorker;->initDiskCacheInternal()V

    goto :goto_0

    .line 557
    :pswitch_2
    iget-object v0, p0, Llewa/util/ImageWorker$CacheAsyncTask;->this$0:Llewa/util/ImageWorker;

    invoke-virtual {v0}, Llewa/util/ImageWorker;->flushCacheInternal()V

    goto :goto_0

    .line 560
    :pswitch_3
    iget-object v0, p0, Llewa/util/ImageWorker$CacheAsyncTask;->this$0:Llewa/util/ImageWorker;

    invoke-virtual {v0}, Llewa/util/ImageWorker;->closeCacheInternal()V

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
