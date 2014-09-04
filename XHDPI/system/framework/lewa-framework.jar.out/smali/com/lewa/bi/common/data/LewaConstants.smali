.class public Lcom/lewa/bi/common/data/LewaConstants;
.super Ljava/lang/Object;
.source "LewaConstants.java"


# static fields
.field public static final APP_AGENT_HEADER_NAME:Ljava/lang/String; = "UA"

.field public static final APP_AGENT_PREFIX:Ljava/lang/String; = "LEWA"

.field public static final CLIENT_VERSION_HEADER_NAME:Ljava/lang/String; = "version"

.field public static final COMMON_KEY:[B = null

.field public static final DEFAULT_FETCH_SIZE:I = 0x14

.field public static final DEFAULT_SUGGESTION_FETCH_SIZE:I = 0x50

.field public static final DELIMITER_KEYWORD:C = '#'

.field public static final DELIMITER_SERVICE:C = '#'

.field public static final DEVICE_ID_HEADER_NAME:Ljava/lang/String; = "DEVICEID"

.field public static final DUMMY_DEVICE_ID:Lcom/lewa/bi/common/data/collect/DeviceId; = null

.field public static final ENCRYPTION_HEADER_NAME:Ljava/lang/String; = "encryption"

.field public static final MAX_CIRCLE_MEMBER_COUNT:I = 0x96

.field public static final MAX_EMOTION_ID_COUNT:I = 0x100

.field public static final MAX_FETCH_SIZE:I = 0xc8

.field public static final MAX_FETCH_SIZE_EMOTION:I = 0x64

.field public static final MAX_REPLYER_COUNT:I = 0x3

.field public static final MAX_REPLY_ID_COUNT:I = 0xa

.field public static final MAX_SHARED_WITH_COUNT:I = 0x1e

.field public static final NETWORK_HEADER_NAME:Ljava/lang/String; = "network"

.field public static final SEQUENCEID_HEADER_NAME:Ljava/lang/String; = "sequenceId"

.field public static final SERVICE_APP_RECOMMEND:Ljava/lang/String; = "appRecommend"

.field public static final SESSION_HEADER_NAME:Ljava/lang/String; = "SESSION"

.field public static final SMS_MIN_INTERVAL_MINUTES:I = 0x1e


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lewa/bi/common/data/LewaConstants;->COMMON_KEY:[B

    .line 161
    new-instance v0, Lcom/lewa/bi/common/data/collect/DeviceId;

    const-string v1, "82264df2-4d6c-11e0-9bc6-f0def11c8bd2"

    invoke-direct {v0, v1}, Lcom/lewa/bi/common/data/collect/DeviceId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lewa/bi/common/data/LewaConstants;->DUMMY_DEVICE_ID:Lcom/lewa/bi/common/data/collect/DeviceId;

    return-void

    .line 112
    nop

    :array_0
    .array-data 0x1
        0x6et
        0x75t
        0x40t
        0x80t
        0xb0t
        0x61t
        0x9bt
        0x94t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
