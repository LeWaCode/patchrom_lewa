.class public Llewa/accounts/configure/PayConfig;
.super Ljava/lang/Object;
.source "PayConfig.java"


# static fields
.field public static APKPATH:Ljava/lang/String; = null

.field public static final CHANNEL_ID:Ljava/lang/String; = "0001"

.field public static final FILE_APK_ASSET:Ljava/lang/String; = "QihooPay.apk"

.field public static final FILE_TEMP_APK:Ljava/lang/String; = "/tempqihoopay.apk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    sput-object v0, Llewa/accounts/configure/PayConfig;->APKPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
