.class Llewa/bi/common/BICommonUtil$VALUE;
.super Ljava/lang/Object;
.source "BICommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/common/BICommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VALUE"
.end annotation


# instance fields
.field private BI_CLINET_ID:Ljava/lang/String;

.field private BI_UUID:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-object v0, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_UUID:Ljava/lang/String;

    .line 1076
    iput-object v0, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_CLINET_ID:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Llewa/bi/common/BICommonUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1074
    invoke-direct {p0}, Llewa/bi/common/BICommonUtil$VALUE;-><init>()V

    return-void
.end method


# virtual methods
.method public getBIClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_CLINET_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getBIUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_UUID:Ljava/lang/String;

    return-object v0
.end method

.method public setBIUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "BI_UUID"

    .prologue
    .line 1083
    iput-object p1, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_UUID:Ljava/lang/String;

    .line 1084
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .parameter "BI_CLINET_ID"

    .prologue
    .line 1091
    iput-object p1, p0, Llewa/bi/common/BICommonUtil$VALUE;->BI_CLINET_ID:Ljava/lang/String;

    .line 1092
    return-void
.end method
