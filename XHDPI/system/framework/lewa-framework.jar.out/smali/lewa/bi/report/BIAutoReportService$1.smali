.class Llewa/bi/report/BIAutoReportService$1;
.super Landroid/os/Handler;
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
    .line 41
    iput-object p1, p0, Llewa/bi/report/BIAutoReportService$1;->this$0:Llewa/bi/report/BIAutoReportService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService$1;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Llewa/bi/report/BIAutoReportService;->access$000(Llewa/bi/report/BIAutoReportService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService$1;->this$0:Llewa/bi/report/BIAutoReportService;

    #getter for: Llewa/bi/report/BIAutoReportService;->cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Llewa/bi/report/BIAutoReportService;->access$000(Llewa/bi/report/BIAutoReportService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 49
    iget-object v0, p0, Llewa/bi/report/BIAutoReportService$1;->this$0:Llewa/bi/report/BIAutoReportService;

    #setter for: Llewa/bi/report/BIAutoReportService;->mAutoData:Z
    invoke-static {v0, v1}, Llewa/bi/report/BIAutoReportService;->access$102(Llewa/bi/report/BIAutoReportService;Z)Z

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
