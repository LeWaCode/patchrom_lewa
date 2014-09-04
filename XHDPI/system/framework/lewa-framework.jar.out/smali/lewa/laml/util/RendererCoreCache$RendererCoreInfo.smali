.class public Llewa/laml/util/RendererCoreCache$RendererCoreInfo;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RendererCoreInfo"
.end annotation


# instance fields
.field public accessTime:J

.field public cacheTime:J

.field public checkCache:Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;

.field public r:Llewa/laml/RendererCore;


# direct methods
.method public constructor <init>(Llewa/laml/RendererCore;)V
    .locals 2
    .parameter "rc"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->accessTime:J

    .line 157
    iput-object p1, p0, Llewa/laml/util/RendererCoreCache$RendererCoreInfo;->r:Llewa/laml/RendererCore;

    .line 158
    return-void
.end method
