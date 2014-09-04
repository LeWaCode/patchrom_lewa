.class Llewa/bi/report/BIAutoReportService$LewaThread;
.super Ljava/lang/Object;
.source "BIAutoReportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/report/BIAutoReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LewaThread"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/bi/report/BIAutoReportService;


# direct methods
.method constructor <init>(Llewa/bi/report/BIAutoReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Llewa/bi/report/BIAutoReportService$LewaThread;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 95
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 96
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$LewaThread;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Llewa/bi/report/BIAutoReportService;->access$000(Llewa/bi/report/BIAutoReportService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$LewaThread;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Llewa/bi/report/BIAutoReportService;->access$000(Llewa/bi/report/BIAutoReportService;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 98
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$LewaThread;->this$0:Llewa/bi/report/BIAutoReportService;

    const/4 v2, 0x1

    #setter for: Llewa/bi/report/BIAutoReportService;->mAutoData:Z
    invoke-static {v1, v2}, Llewa/bi/report/BIAutoReportService;->access$102(Llewa/bi/report/BIAutoReportService;Z)Z

    .line 99
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "BIAutoReportService"

    const-string v2, "LewaThread start to open mobile data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$LewaThread;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Llewa/bi/report/BIAutoReportService;->access$300(Llewa/bi/report/BIAutoReportService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x4650

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "BIAutoReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LewaThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BIAutoReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LewaThread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
