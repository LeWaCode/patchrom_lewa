.class Lcom/lewa/gson/internal/StringMap$Values$1;
.super Lcom/lewa/gson/internal/StringMap$LinkedHashIterator;
.source "StringMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/gson/internal/StringMap$Values;->iterator()Ljava/util/Iterator;
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
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/gson/internal/StringMap$Values;


# direct methods
.method constructor <init>(Lcom/lewa/gson/internal/StringMap$Values;)V
    .locals 2
    .parameter

    .prologue
    .line 430
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values$1;,"Lcom/lewa/gson/internal/StringMap$Values.1;"
    iput-object p1, p0, Lcom/lewa/gson/internal/StringMap$Values$1;->this$1:Lcom/lewa/gson/internal/StringMap$Values;

    iget-object v0, p1, Lcom/lewa/gson/internal/StringMap$Values;->this$0:Lcom/lewa/gson/internal/StringMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lewa/gson/internal/StringMap$LinkedHashIterator;-><init>(Lcom/lewa/gson/internal/StringMap;Lcom/lewa/gson/internal/StringMap$1;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, this:Lcom/lewa/gson/internal/StringMap$Values$1;,"Lcom/lewa/gson/internal/StringMap$Values.1;"
    invoke-virtual {p0}, Lcom/lewa/gson/internal/StringMap$Values$1;->nextEntry()Lcom/lewa/gson/internal/StringMap$LinkedEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/lewa/gson/internal/StringMap$LinkedEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
