.class Llewa/bi/report/BIAutoReportService$2;
.super Landroid/telephony/PhoneStateListener;
.source "BIAutoReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llewa/bi/report/BIAutoReportService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llewa/bi/report/BIAutoReportService;


# direct methods
.method constructor <init>(Llewa/bi/report/BIAutoReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 65
    :pswitch_1
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-static {v1}, Llewa/bi/common/BICommonUtil;->getLastCallLogNum(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, num:I
    sget-boolean v1, Llewa/bi/common/BIConstants;->DebugMode:Z

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "BIAutoReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallIng num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Llewa/bi/common/BICommonUtil;->setLastCallLogNum(Landroid/content/Context;I)V

    goto :goto_0

    .line 72
    .end local v0           #num:I
    :pswitch_2
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-static {v1}, Llewa/bi/common/BICommonUtil;->getLastCallLogNum(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 73
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-static {v1}, Llewa/bi/common/BICommonUtil;->getBIClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Llewa/bi/report/BIAutoReportService$LewaThread;

    iget-object v4, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-direct {v3, v4}, Llewa/bi/report/BIAutoReportService$LewaThread;-><init>(Llewa/bi/report/BIAutoReportService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Llewa/bi/report/BIAutoReportService;->access$202(Llewa/bi/report/BIAutoReportService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 76
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->mThread:Ljava/lang/Thread;
    invoke-static {v1}, Llewa/bi/report/BIAutoReportService;->access$200(Llewa/bi/report/BIAutoReportService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Llewa/bi/report/BIAutoReportService$2;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-virtual {v1}, Llewa/bi/report/BIAutoReportService;->stopSelf()V

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
