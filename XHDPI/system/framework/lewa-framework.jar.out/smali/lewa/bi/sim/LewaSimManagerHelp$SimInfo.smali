.class public Llewa/bi/sim/LewaSimManagerHelp$SimInfo;
.super Ljava/lang/Object;
.source "LewaSimManagerHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/sim/LewaSimManagerHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimInfo"
.end annotation


# instance fields
.field public label:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public simId:J

.field public slot:I


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "slot"
    .parameter "simId"
    .parameter "label"
    .parameter "number"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->slot:I

    .line 85
    iput-wide p2, p0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->simId:J

    .line 86
    iput-object p4, p0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->label:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Llewa/bi/sim/LewaSimManagerHelp$SimInfo;->number:Ljava/lang/String;

    .line 88
    return-void
.end method
