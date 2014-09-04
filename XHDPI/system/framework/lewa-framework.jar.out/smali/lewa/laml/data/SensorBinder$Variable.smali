.class Llewa/laml/data/SensorBinder$Variable;
.super Llewa/laml/data/VariableBinder$Variable;
.source "SensorBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/SensorBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# instance fields
.field public mIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "node"
    .parameter "var"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/laml/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Llewa/laml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 149
    const-string v0, "index"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/data/SensorBinder$Variable;->mIndex:I

    .line 150
    return-void
.end method
