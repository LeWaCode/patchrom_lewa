.class public Llewa/bi/report/BIAutoReportService;
.super Landroid/app/Service;
.source "BIAutoReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/bi/report/BIAutoReportService$LewaThread;
    }
.end annotation


# static fields
.field private static final LEWA_AUTO_WAIT_TIME:I = 0x4650

.field private static final LEWA_CLOSE_AUTO_DATA:I = 0x1

.field public static final MAX_CALL_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BIAutoReportService"


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mAutoData:Z

.field private mHandler:Landroid/os/Handler;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/bi/report/BIAutoReportService;->mAutoData:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Llewa/bi/report/BIAutoReportService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$102(Llewa/bi/report/BIAutoReportService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Llewa/bi/report/BIAutoReportService;->mAutoData:Z

    return p1
.end method

.method static synthetic access$200(Llewa/bi/report/BIAutoReportService;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Llewa/bi/report/BIAutoReportService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Llewa/bi/report/BIAutoReportService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Llewa/bi/report/BIAutoReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;

    .line 41
    new-instance v1, Llewa/bi/report/BIAutoReportService$1;

    invoke-direct {v1, p0}, Llewa/bi/report/BIAutoReportService$1;-><init>(Llewa/bi/report/BIAutoReportService;)V

    iput-object v1, p0, Llewa/bi/report/BIAutoReportService;->mHandler:Landroid/os/Handler;

    .line 56
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Llewa/bi/report/BIAutoReportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, tManager:Landroid/telephony/TelephonyManager;
    new-instance v1, Llewa/bi/report/BIAutoReportService$2;

    invoke-direct {v1, p0}, Llewa/bi/report/BIAutoReportService$2;-><init>(Llewa/bi/report/BIAutoReportService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 88
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 114
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "BIAutoReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, mAutoData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Llewa/bi/report/BIAutoReportService;->mAutoData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Llewa/bi/report/BIAutoReportService;->mAutoData:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 121
    :cond_1
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BIAutoReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy "

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
