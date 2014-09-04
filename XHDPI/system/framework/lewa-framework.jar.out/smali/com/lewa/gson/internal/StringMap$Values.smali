.class final Lcom/lewa/gson/internal/StringMap$Values;
.super Ljava/util/AbstractCollection;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/internal/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/gson/internal/StringMap;


# direct methods
.method private constructor <init>(Lcom/lewa/gson/internal/StringMap;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$Values;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/lewa/gson/internal/StringMap$Values;-><init>(Lcom/lewa/gson/internal/StringMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 446
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$Values;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0}, Lcom/lewa/gson/internal/StringMap;->clear()V

    .line 447
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 442
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$Values;->this$0:Lcom/lewa/gson/internal/StringMap;

    invoke-virtual {v0, p1}, Lcom/lewa/gson/internal/StringMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    new-instance v0, Lcom/lewa/gson/internal/StringMap$Values$1;

    invoke-direct {v0, p0}, Lcom/lewa/gson/internal/StringMap$Values$1;-><init>(Lcom/lewa/gson/internal/StringMap$Values;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 438
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values;,"Lcom/lewa/gson/internal/StringMap<TV;>.Values;"
    iget-object v0, p0, Lcom/lewa/gson/internal/StringMap$Values;->this$0:Lcom/lewa/gson/internal/StringMap;

    #getter for: Lcom/lewa/gson/internal/StringMap;->size:I
    invoke-static {v0}, Lcom/lewa/gson/internal/StringMap;->access$500(Lcom/lewa/gson/internal/StringMap;)I

    move-result v0

    return v0
.end method
