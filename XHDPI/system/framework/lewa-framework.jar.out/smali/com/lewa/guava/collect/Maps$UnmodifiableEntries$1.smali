.class Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;
.super Lcom/lewa/guava/collect/ForwardingIterator;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/guava/collect/ForwardingIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;

.field final synthetic val$delegate:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 584
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries.1;"
    iput-object p1, p0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;->this$0:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries;

    iput-object p2, p0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/lewa/guava/collect/ForwardingIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 584
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;->delegate()Ljava/util/Iterator;

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
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries.1;"
    iget-object v0, p0, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;->val$delegate:Ljava/util/Iterator;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 584
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries.1;"
    invoke-virtual {p0}, Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, this:Lcom/lewa/guava/collect/Maps$UnmodifiableEntries$1;,"Lcom/lewa/guava/collect/Maps$UnmodifiableEntries.1;"
    invoke-super {p0}, Lcom/lewa/guava/collect/ForwardingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    #calls: Lcom/lewa/guava/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/lewa/guava/collect/Maps;->access$000(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
