.class Llewa/util/LocationUtil$LocationHolder;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationHolder"
.end annotation


# instance fields
.field cardType:Ljava/lang/String;

.field location:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/util/LocationUtil$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Llewa/util/LocationUtil$LocationHolder;-><init>()V

    return-void
.end method
