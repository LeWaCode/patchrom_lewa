.class public final Llewa/bi/provider/BI$EventMapColumns;
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
    name = "EventMapColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_KEY:Ljava/lang/String; = "eventKey"

.field public static final EVENT_VALUE:Ljava/lang/String; = "EventValue"

.field public static final TIMESTAMP:Ljava/lang/String; = "time"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://com.lewa.provider.bi/eventmap?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://com.lewa.provider.bi/eventmap?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/bi/provider/BI$EventMapColumns;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
