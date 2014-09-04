.class public Llewa/laml/util/ConfigFile$Gadget;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/util/ConfigFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gadget"
.end annotation


# instance fields
.field public path:Ljava/lang/String;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "pa"
    .parameter "gx"
    .parameter "gy"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Llewa/laml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    .line 50
    iput p2, p0, Llewa/laml/util/ConfigFile$Gadget;->x:I

    .line 51
    iput p3, p0, Llewa/laml/util/ConfigFile$Gadget;->y:I

    .line 52
    return-void
.end method
