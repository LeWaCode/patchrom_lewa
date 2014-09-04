.class final Lcom/lewa/gson/stream/JsonReader$1;
.super Lcom/lewa/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1315
    invoke-direct {p0}, Lcom/lewa/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/lewa/gson/stream/JsonReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1317
    instance-of v0, p1, Lcom/lewa/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1318
    check-cast p1, Lcom/lewa/gson/internal/bind/JsonTreeReader;

    .end local p1
    invoke-virtual {p1}, Lcom/lewa/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1329
    :goto_0
    return-void

    .line 1321
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    .line 1322
    #getter for: Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;
    invoke-static {p1}, Lcom/lewa/gson/stream/JsonReader;->access$000(Lcom/lewa/gson/stream/JsonReader;)Lcom/lewa/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/lewa/gson/stream/JsonToken;->NAME:Lcom/lewa/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1323
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lewa/gson/stream/JsonReader;->peek()Lcom/lewa/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #calls: Lcom/lewa/gson/stream/JsonReader;->getLineNumber()I
    invoke-static {p1}, Lcom/lewa/gson/stream/JsonReader;->access$100(Lcom/lewa/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #calls: Lcom/lewa/gson/stream/JsonReader;->getColumnNumber()I
    invoke-static {p1}, Lcom/lewa/gson/stream/JsonReader;->access$200(Lcom/lewa/gson/stream/JsonReader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :cond_1
    #getter for: Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/lewa/gson/stream/JsonReader;->access$400(Lcom/lewa/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/lewa/gson/stream/JsonReader;->value:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/lewa/gson/stream/JsonReader;->access$302(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    const/4 v0, 0x0

    #setter for: Lcom/lewa/gson/stream/JsonReader;->name:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/lewa/gson/stream/JsonReader;->access$402(Lcom/lewa/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/String;

    .line 1328
    sget-object v0, Lcom/lewa/gson/stream/JsonToken;->STRING:Lcom/lewa/gson/stream/JsonToken;

    #setter for: Lcom/lewa/gson/stream/JsonReader;->token:Lcom/lewa/gson/stream/JsonToken;
    invoke-static {p1, v0}, Lcom/lewa/gson/stream/JsonReader;->access$002(Lcom/lewa/gson/stream/JsonReader;Lcom/lewa/gson/stream/JsonToken;)Lcom/lewa/gson/stream/JsonToken;

    goto :goto_0
.end method
