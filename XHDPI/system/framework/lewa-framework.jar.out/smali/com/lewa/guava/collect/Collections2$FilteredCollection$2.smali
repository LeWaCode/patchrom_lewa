.class Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/lewa/guava/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Collections2$FilteredCollection;->retainAll(Ljava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lewa/guava/base/Predicate",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Collections2$FilteredCollection;

.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection.2;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;->this$0:Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    iput-object p2, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, this:Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;,"Lcom/lewa/guava/collect/Collections2$FilteredCollection.2;"
    .local p1, input:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;->this$0:Lcom/lewa/guava/collect/Collections2$FilteredCollection;

    iget-object v0, v0, Lcom/lewa/guava/collect/Collections2$FilteredCollection;->predicate:Lcom/lewa/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/lewa/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lewa/guava/collect/Collections2$FilteredCollection$2;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
