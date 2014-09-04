.class final Lcom/lewa/gson/internal/StringMap$KeySet;
.super Ljava/util/AbstractSet;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/lewa/gson/internal/StringMap;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 400
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/StringMap$KeySet;-><init>(Lcom/lewa/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 424
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/lewa/gson/internal/StringMap;->clear()V

    .line 425
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 414
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    new-instance v0, Lcom/lewa/gson/internal/StringMap$KeySet$1;

    invoke-direct {v0, p0}, Lcom/lewa/gson/internal/StringMap$KeySet$1;-><init>(Lcom/lewa/gson/internal/StringMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 418
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    #getter for: Lcom/lewa/gson/internal/StringMap;->size:I
    invoke-static {v1}, Lcom/lewa/gson/internal/StringMap;->access$500(Lcom/lewa/gson/internal/StringMap;)I

    move-result v0

    .line 419
    .local v0, oldSize:I
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v1, p1}, Lcom/lewa/gson/internal/StringMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v1, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    #getter for: Lcom/lewa/gson/internal/StringMap;->size:I
    invoke-static {v1}, Lcom/lewa/gson/internal/StringMap;->access$500(Lcom/lewa/gson/internal/StringMap;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 410
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet;,"Lcom/lewa/gson/internal/StringMap<TV;>.KeySet;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    #getter for: Lcom/lewa/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/lewa/gson/internal/StringMap;->access$500(Lcom/lewa/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
