.class public Lcom/lewa/cloud/manager/SyncResultObsv;
.super Ljava/lang/Object;
.source "SyncResultObsv.java"

# interfaces
.implements Lcom/tencent/qqpim/sdk/accesslayer/interfaces/IGetRecordNumObserver;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/lewa/cloud/manager/SyncResultObsv;->mHandler:Landroid/os/Handler;

    .line 12
    return-void
.end method


# virtual methods
.method public getRecordNumFinished(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lewa/cloud/manager/SyncResultObsv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    return-void
.end method
