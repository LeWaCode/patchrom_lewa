.class Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;
.super Lcom/lewa/guava/collect/ForwardingCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

.field final synthetic val$delegate:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1341
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.2;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;->this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;->val$delegate:Ljava/util/Collection;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1341
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.2;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1343
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.2;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;->val$delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1347
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.2;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$2;->this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
