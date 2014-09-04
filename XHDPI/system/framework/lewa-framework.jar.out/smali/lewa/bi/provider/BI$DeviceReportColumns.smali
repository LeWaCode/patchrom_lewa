.class public final Llewa/bi/provider/BI$DeviceReportColumns;
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
    name = "DeviceReportColumns"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "id"

.field public static final APP_MD5:Ljava/lang/String; = "md5"

.field public static final APP_NAME:Ljava/lang/String; = "name"

.field public static final APP_VERSION:Ljava/lang/String; = "ver"

.field public static final APP_VERSION_NAME:Ljava/lang/String; = "vname"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "content://com.lewa.provider.bi/devicefirst?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$DeviceReportColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://com.lewa.provider.bi/devicefirst?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$DeviceReportColumns;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
