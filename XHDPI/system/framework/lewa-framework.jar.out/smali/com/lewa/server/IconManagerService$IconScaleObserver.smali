.class Lcom/lewa/server/IconManagerService$IconScaleObserver;
.super Landroid/database/ContentObserver;
.source "IconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/server/IconManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconScaleObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/lewa/server/IconManagerService;


# direct methods
.method public constructor <init>(Lcom/lewa/server/IconManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lewa/server/IconManagerService$IconScaleObserver;->this$0:Lcom/lewa/server/IconManagerService;

    .line 47
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    iput-object p2, p0, Lcom/lewa/server/IconManagerService$IconScaleObserver;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 54
    new-instance v0, Lcom/lewa/server/IconManagerService$IconScaleObserver$1;

    invoke-direct {v0, p0}, Lcom/lewa/server/IconManagerService$IconScaleObserver$1;-><init>(Lcom/lewa/server/IconManagerService$IconScaleObserver;)V

    .line 65
    .local v0, r:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/lewa/server/IconManagerService$IconScaleObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
