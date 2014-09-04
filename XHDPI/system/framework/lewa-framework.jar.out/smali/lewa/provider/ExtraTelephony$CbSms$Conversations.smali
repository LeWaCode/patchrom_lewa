.class public final Llewa/provider/ExtraTelephony$CbSms$Conversations;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Llewa/provider/ExtraTelephony$TextBasedCbSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/provider/ExtraTelephony$CbSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final ADDRESS_ID:Ljava/lang/String; = "address_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "content://cb/threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Llewa/provider/ExtraTelephony$CbSms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
