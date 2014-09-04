.class public Llewa/bi/common/BIConstants;
.super Ljava/lang/Object;
.source "BIConstants.java"


# static fields
.field public static DebugMode:Z = false

.field public static final LEWA_ACCOUNT:Ljava/lang/String; = "bi.lewa.account"

.field public static final LEWA_ACCOUNT_CHANGED_ACTION:Ljava/lang/String; = "bi.lewa.action.ACCOUNT_CHANGE"

.field public static final LEWA_CONFIG:Ljava/lang/String; = "[{\"name\":\"reportPrefBeginTime\",\"value\":\"0\"},{\"name\":\"reportPrefEndTime\",\"value\":\"6\"},{\"cf\":\"DAILY\",\"name\":\"device\",\"rf\":\"DAILY\",\"net\":\"WIFI_ONLY\"},{\"cf\":\"REALTIME\",\"name\":\"event-default\",\"rf\":\"DAILY\",\"net\":\"WIFI_ONLY\"}]"

.field public static final LEWA_IMMEDIATE_REPORT_ACTION:Ljava/lang/String; = "bi.lewa.action.IMMEDIATELY_REPORT"

.field public static final LEWA_LOCATION_CHANGED_ACTION:Ljava/lang/String; = "bi.lewa.action.LOCATION_CHANGE"

.field public static final LEWA_LOCATION_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LEWA_LOCATION_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final LEWA_RANDOM_TIME_ACTION:Ljava/lang/String; = "bi.lewa.action.RANDOM_TIME"

.field public static final LEWA_UPLOAD_TIME_ACTION:Ljava/lang/String; = "bi.lewa.action.UPLOAD_TIME"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Llewa/bi/common/BIConstants;->DebugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
