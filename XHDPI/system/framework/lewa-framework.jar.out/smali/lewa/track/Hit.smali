.class public Llewa/track/Hit;
.super Ljava/lang/Object;
.source "Hit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/track/Hit$IHitStore;
    }
.end annotation


# instance fields
.field final hitId:J

.field final hitString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "paramString"
    .parameter "paramLong"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Llewa/track/Hit;->hitString:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Llewa/track/Hit;->hitId:J

    .line 10
    return-void
.end method
