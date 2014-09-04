.class public Llewa/util/AudioOutputHelper$AudioOutputClient;
.super Ljava/lang/Object;
.source "AudioOutputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/AudioOutputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioOutputClient"
.end annotation


# instance fields
.field public mActive:Z

.field public final mProcessId:I

.field public final mSessionId:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "sessionId"
    .parameter "processId"
    .parameter "streamType"

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/util/AudioOutputHelper$AudioOutputClient;-><init>(IIIZ)V

    .line 263
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .parameter "sessionId"
    .parameter "processId"
    .parameter "streamType"
    .parameter "active"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p1, p0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mSessionId:I

    .line 267
    iput p2, p0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mProcessId:I

    .line 268
    iput p3, p0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mStreamType:I

    .line 269
    iput-boolean p4, p0, Llewa/util/AudioOutputHelper$AudioOutputClient;->mActive:Z

    .line 270
    return-void
.end method
