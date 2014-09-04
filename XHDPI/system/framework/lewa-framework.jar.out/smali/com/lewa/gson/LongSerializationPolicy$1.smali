.class final enum Lcom/lewa/gson/LongSerializationPolicy$1;
.super Lcom/lewa/gson/LongSerializationPolicy;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lewa/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/lewa/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/lewa/gson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    new-instance v0, Lcom/lewa/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/lewa/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
