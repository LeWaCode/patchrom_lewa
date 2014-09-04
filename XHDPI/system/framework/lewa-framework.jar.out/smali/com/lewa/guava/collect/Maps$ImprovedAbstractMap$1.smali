.class Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;
.super Lcom/lewa/guava/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

.field final synthetic val$delegate:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1322
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->val$delegate:Ljava/util/Set;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1322
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1322
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1324
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->val$delegate:Ljava/util/Set;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1328
    .local p0, this:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;,"Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap$1;->this$0:Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;

    invoke-virtual {v0}, Lcom/lewa/guava/collect/Maps$ImprovedAbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
