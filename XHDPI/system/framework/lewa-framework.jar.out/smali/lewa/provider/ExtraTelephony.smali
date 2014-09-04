.class public Llewa/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/provider/ExtraTelephony$Intents;,
        Llewa/provider/ExtraTelephony$WapPush;,
        Llewa/provider/ExtraTelephony$CbSms;,
        Llewa/provider/ExtraTelephony$MmsSms;,
        Llewa/provider/ExtraTelephony$Sms;,
        Llewa/provider/ExtraTelephony$Mms;,
        Llewa/provider/ExtraTelephony$Threads;,
        Llewa/provider/ExtraTelephony$TextBasedCbSmsColumns;
    }
.end annotation


# static fields
.field public static final SIMBackgroundRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Llewa/provider/ExtraTelephony;->SIMBackgroundRes:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xaet 0x0t 0x8t 0x9t
        0xaft 0x0t 0x8t 0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method
