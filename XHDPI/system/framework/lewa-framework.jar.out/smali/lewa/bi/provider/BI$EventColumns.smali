.class public final Llewa/bi/provider/BI$EventColumns;
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
    name = "EventColumns"
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "appId"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final EVENT_ID:Ljava/lang/String; = "eventId"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final TIMESTAMP:Ljava/lang/String; = "time"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "content://com.lewa.provider.bi/event?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.lewa.provider.bi/event?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$EventColumns;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
