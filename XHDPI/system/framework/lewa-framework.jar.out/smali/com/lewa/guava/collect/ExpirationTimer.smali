.class Lcom/lewa/guava/collect/ExpirationTimer;
.super Ljava/lang/Object;
.source "ExpirationTimer.java"


# static fields
.field static instance:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/lewa/guava/collect/ExpirationTimer;->instance:Ljava/util/Timer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
