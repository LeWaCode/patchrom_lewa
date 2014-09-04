.class Llewa/laml/elements/ImageScreenElement$pair;
.super Ljava/lang/Object;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public p1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT1;"
        }
    .end annotation
.end field

.field public p2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT2;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 520
    .local p0, this:Llewa/laml/elements/ImageScreenElement$pair;,"Llewa/laml/elements/ImageScreenElement$pair<TT1;TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llewa/laml/elements/ImageScreenElement$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 520
    .local p0, this:Llewa/laml/elements/ImageScreenElement$pair;,"Llewa/laml/elements/ImageScreenElement$pair<TT1;TT2;>;"
    invoke-direct {p0}, Llewa/laml/elements/ImageScreenElement$pair;-><init>()V

    return-void
.end method
