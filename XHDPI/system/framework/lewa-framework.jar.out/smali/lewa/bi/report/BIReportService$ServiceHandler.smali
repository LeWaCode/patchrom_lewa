.class final Llewa/bi/report/BIReportService$ServiceHandler;
.super Landroid/os/Handler;
.source "BIReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/report/BIReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Llewa/bi/report/BIReportService;


# direct methods
.method public constructor <init>(Llewa/bi/report/BIReportService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 198
    iput-object p1, p0, Llewa/bi/report/BIReportService$ServiceHandler;->this$0:Llewa/bi/report/BIReportService;

    .line 199
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 204
    iget-object v1, p0, Llewa/bi/report/BIReportService$ServiceHandler;->this$0:Llewa/bi/report/BIReportService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Llewa/bi/report/BIReportService;->onHandleIntent(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
