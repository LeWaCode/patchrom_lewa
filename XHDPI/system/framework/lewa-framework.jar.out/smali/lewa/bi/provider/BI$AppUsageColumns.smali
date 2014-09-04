.class public final Llewa/bi/provider/BI$AppUsageColumns;
.super Ljava/lang/Object;
.source "BI.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/bi/provider/BI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppUsageColumns"
.end annotation


# static fields
.field public static final APP_DURATION:Ljava/lang/String; = "drution"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final APP_STARTTIME:Ljava/lang/String; = "startTime"

.field public static final APP_TIMESTAMP:Ljava/lang/String; = "time"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://com.lewa.provider.bi/appusage?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.lewa.provider.bi/appusage?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$AppUsageColumns;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
