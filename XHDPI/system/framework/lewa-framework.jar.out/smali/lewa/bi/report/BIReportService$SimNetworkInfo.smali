.class Llewa/bi/report/BIReportService$SimNetworkInfo;
.super Ljava/lang/Object;
.source "BIReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/report/BIReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimNetworkInfo"
.end annotation


# instance fields
.field private networkTemplate:Landroid/net/NetworkTemplate;

.field private slot:I

.field final synthetic this$0:Llewa/bi/report/BIReportService;


# direct methods
.method constructor <init>(Llewa/bi/report/BIReportService;)V
    .locals 0
    .parameter

    .prologue
    .line 1645
    iput-object p1, p0, Llewa/bi/report/BIReportService$SimNetworkInfo;->this$0:Llewa/bi/report/BIReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Llewa/bi/report/BIReportService$SimNetworkInfo;->networkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 1652
    iget v0, p0, Llewa/bi/report/BIReportService$SimNetworkInfo;->slot:I

    return v0
.end method

.method public setNetworkTemplate(Landroid/net/NetworkTemplate;)V
    .locals 0
    .parameter "networkTemplate"

    .prologue
    .line 1664
    iput-object p1, p0, Llewa/bi/report/BIReportService$SimNetworkInfo;->networkTemplate:Landroid/net/NetworkTemplate;

    .line 1665
    return-void
.end method

.method public setSlot(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 1656
    iput p1, p0, Llewa/bi/report/BIReportService$SimNetworkInfo;->slot:I

    .line 1657
    return-void
.end method
