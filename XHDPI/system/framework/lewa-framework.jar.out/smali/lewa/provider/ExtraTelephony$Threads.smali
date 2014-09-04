.class public final Llewa/provider/ExtraTelephony$Threads;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final CELL_BROADCAST_THREAD:I = 0x3

.field public static final READCOUNT:Ljava/lang/String; = "readcount"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final WAPPUSH_THREAD:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method
