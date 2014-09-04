.class Llewa/laml/data/Variables$DoubleInfo;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/Variables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleInfo"
.end annotation


# instance fields
.field mValue:Ljava/lang/Double;

.field mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/Double;I)V
    .locals 0
    .parameter "value"
    .parameter "version"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Llewa/laml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    .line 186
    iput p2, p0, Llewa/laml/data/Variables$DoubleInfo;->mVersion:I

    .line 187
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Double;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 180
    iput-object p1, p0, Llewa/laml/data/Variables$DoubleInfo;->mValue:Ljava/lang/Double;

    .line 181
    iget v0, p0, Llewa/laml/data/Variables$DoubleInfo;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llewa/laml/data/Variables$DoubleInfo;->mVersion:I

    .line 182
    return-void
.end method
