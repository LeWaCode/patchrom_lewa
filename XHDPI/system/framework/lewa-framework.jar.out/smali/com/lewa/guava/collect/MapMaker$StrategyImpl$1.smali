.class Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;
.super Ljava/util/TimerTask;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

.field final synthetic val$keyReference:Ljava/lang/ref/WeakReference;

.field final synthetic val$valueReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    iput-object p2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->val$keyReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->val$valueReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 543
    .local p0, this:Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;,"Lcom/lewa/guava/collect/MapMaker$StrategyImpl.1;"
    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->val$keyReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, key:Ljava/lang/Object;,"TK;"
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->this$0:Lcom/lewa/guava/collect/MapMaker$StrategyImpl;

    iget-object v1, v1, Lcom/lewa/guava/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Lcom/lewa/guava/collect/MapMaker$StrategyImpl$1;->val$valueReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 548
    :cond_0
    return-void
.end method
