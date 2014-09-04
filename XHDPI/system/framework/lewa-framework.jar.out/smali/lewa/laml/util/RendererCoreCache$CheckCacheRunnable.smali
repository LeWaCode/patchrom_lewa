.class Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;
.super Ljava/lang/Object;
.source "RendererCoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/RendererCoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckCacheRunnable"
.end annotation


# instance fields
.field private mKey:Ljava/lang/Object;

.field final synthetic this$0:Llewa/laml/util/RendererCoreCache;


# direct methods
.method public constructor <init>(Llewa/laml/util/RendererCoreCache;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "key"

    .prologue
    .line 137
    iput-object p1, p0, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Llewa/laml/util/RendererCoreCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;->this$0:Llewa/laml/util/RendererCoreCache;

    iget-object v1, p0, Llewa/laml/util/RendererCoreCache$CheckCacheRunnable;->mKey:Ljava/lang/Object;

    #calls: Llewa/laml/util/RendererCoreCache;->checkCache(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Llewa/laml/util/RendererCoreCache;->access$000(Llewa/laml/util/RendererCoreCache;Ljava/lang/Object;)V

    .line 143
    return-void
.end method
