.class Lcom/lewa/gson/internal/StringMap$KeySet$1;
.super Lcom/lewa/gson/internal/StringMap$LinkedHashIterator;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/internal/StringMap$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lewa/gson/internal/StringMap",
        "<TV;>.",
        "LinkedHashIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/gson/internal/StringMap$KeySet;


# direct methods
.method constructor <init>(Lcom/lewa/gson/internal/StringMap$KeySet;)V
    .locals 2
    .parameter

    .prologue
    .line 402
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet$1;,"Lcom/lewa/gson/internal/StringMap$KeySet.1;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$KeySet$1;->this$1:Lcom/lewa/gson/internal/StringMap$KeySet;

    iget-object v0, p1, Lcom/lewa/gson/internal/StringMap$KeySet;->this$0:Lcom/lewa/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lewa/gson/internal/StringMap$LinkedHashIterator;-><init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 402
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet$1;,"Lcom/lewa/gson/internal/StringMap$KeySet.1;"
    invoke-virtual {p0}, Lcom/lewa/gson/internal/StringMap$KeySet$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    .local p0, this:Lcom/lewa/gson/internal/StringMap$KeySet$1;,"Lcom/lewa/gson/internal/StringMap$KeySet.1;"
    invoke-virtual {p0}, Lcom/lewa/gson/internal/StringMap$KeySet$1;->nextEntry()Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->key:Ljava/lang/String;

    return-object v0
.end method
