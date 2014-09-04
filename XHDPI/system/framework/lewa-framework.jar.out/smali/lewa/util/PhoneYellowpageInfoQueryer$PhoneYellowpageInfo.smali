.class public Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;
.super Ljava/lang/Object;
.source "PhoneYellowpageInfoQueryer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/PhoneYellowpageInfoQueryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneYellowpageInfo"
.end annotation


# instance fields
.field public phone:Ljava/lang/String;

.field public phoneLocation:Ljava/lang/String;

.field public phoneMarkDscp:Ljava/lang/String;

.field public phoneMarkNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phone:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneLocation:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneMarkDscp:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Llewa/util/PhoneYellowpageInfoQueryer$PhoneYellowpageInfo;->phoneMarkNum:I

    .line 38
    return-void
.end method
