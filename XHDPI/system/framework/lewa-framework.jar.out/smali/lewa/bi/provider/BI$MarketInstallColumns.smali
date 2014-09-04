.class public final Llewa/bi/provider/BI$MarketInstallColumns;
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
    name = "MarketInstallColumns"
.end annotation


# static fields
.field public static final CLIENT_TIME:Ljava/lang/String; = "clientTime"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final EVENT:Ljava/lang/String; = "event"

.field public static final NETWORD_TYPE:Ljava/lang/String; = "netType"

.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "appName"

.field public static final PACKAGE_SIZE:Ljava/lang/String; = "packageSize"

.field public static final PACKAGE_VERSION:Ljava/lang/String; = "version"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "content://com.lewa.provider.bi/marketinstall?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 102
    const-string v0, "content://com.lewa.provider.bi/marketinstall?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$MarketInstallColumns;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
