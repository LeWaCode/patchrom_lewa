.class Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;
.super Lcom/lewa/guava/collect/ForwardingIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingIterator",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1387
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;

    iput-object p2, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->delegate()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1389
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->next()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1392
    .local p0, this:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;,"Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;

    iget-object v1, v1, Lcom/lewa/guava/collect/Synchronized$SynchronizedAsMapValues;->mutex:Ljava/lang/Object;

    #calls: Lcom/lewa/guava/collect/Synchronized;->typePreservingCollection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    invoke-static {v0, v1}, Lcom/lewa/guava/collect/Synchronized;->access$000(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
