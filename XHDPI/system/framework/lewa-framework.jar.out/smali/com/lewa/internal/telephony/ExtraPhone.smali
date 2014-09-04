.class public Lcom/lewa/internal/telephony/ExtraPhone;
.super Ljava/lang/Object;
.source "ExtraPhone.java"


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final GEMINI_DEFAULT_SIM_PROP:Ljava/lang/String; = "persist.radio.default_sim"

.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field public static final GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

#the value of this static final field might be set in the static constructor
.field public static final GEMINI_SIM_NUM:I = 0x0

.field public static final GEMINI_SIM_NUM_PROP:Ljava/lang/String; = "persist.gemini.sim_num"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final REASON_DUALIP_PARTIAL_FAILURE_RETRY:Ljava/lang/String; = "DualIpPartialFailureRetry"

.field public static final REASON_NO_SUCH_PDP:Ljava/lang/String; = "noSuchPdp"

.field public static final REASON_RAT_CHANGED:Ljava/lang/String; = "RatChanged"

.field public static final STATE_KEY:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "persist.gemini.sim_num"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lewa/internal/telephony/ExtraPhone;->GEMINI_SIM_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
