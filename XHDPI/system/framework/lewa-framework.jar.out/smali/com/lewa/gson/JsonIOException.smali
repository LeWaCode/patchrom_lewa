.class public final Lcom/lewa/gson/JsonIOException;
.super Lcom/lewa/gson/JsonParseException;
.source "JsonIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lewa/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lewa/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/lewa/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
