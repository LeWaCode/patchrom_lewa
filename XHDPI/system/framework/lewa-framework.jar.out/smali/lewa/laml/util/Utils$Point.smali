.class public Llewa/laml/util/Utils$Point;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter "x0"
    .parameter "y0"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Llewa/laml/util/Utils$Point;->x:D

    .line 44
    iput-wide p3, p0, Llewa/laml/util/Utils$Point;->y:D

    .line 45
    return-void
.end method


# virtual methods
.method public Offset(Llewa/laml/util/Utils$Point;)V
    .locals 4
    .parameter "a"

    .prologue
    .line 34
    iget-wide v0, p0, Llewa/laml/util/Utils$Point;->x:D

    iget-wide v2, p1, Llewa/laml/util/Utils$Point;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Llewa/laml/util/Utils$Point;->x:D

    .line 35
    iget-wide v0, p0, Llewa/laml/util/Utils$Point;->y:D

    iget-wide v2, p1, Llewa/laml/util/Utils$Point;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Llewa/laml/util/Utils$Point;->y:D

    .line 36
    return-void
.end method

.method minus(Llewa/laml/util/Utils$Point;)Llewa/laml/util/Utils$Point;
    .locals 7
    .parameter "a"

    .prologue
    .line 39
    new-instance v0, Llewa/laml/util/Utils$Point;

    iget-wide v1, p0, Llewa/laml/util/Utils$Point;->x:D

    iget-wide v3, p1, Llewa/laml/util/Utils$Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Llewa/laml/util/Utils$Point;->y:D

    iget-wide v5, p1, Llewa/laml/util/Utils$Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Llewa/laml/util/Utils$Point;-><init>(DD)V

    return-object v0
.end method
