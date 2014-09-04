.class Llewa/laml/data/ContentProviderBinder$Variable;
.super Llewa/laml/data/VariableBinder$Variable;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/data/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final BLOB_BITMAP:I = 0x3e9


# instance fields
.field private mBlobVar:Llewa/laml/elements/ImageScreenElement;

.field public mColumn:Ljava/lang/String;

.field public mRow:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "var"

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3}, Llewa/laml/data/VariableBinder$Variable;-><init>(Ljava/lang/String;Ljava/lang/String;Llewa/laml/data/Variables;)V

    .line 528
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
    .line 531
    invoke-direct {p0, p1, p2}, Llewa/laml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Llewa/laml/data/Variables;)V

    .line 532
    return-void
.end method


# virtual methods
.method public getImageElement(Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ImageScreenElement;
    .locals 1
    .parameter "root"

    .prologue
    .line 535
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mBlobVar:Llewa/laml/elements/ImageScreenElement;

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Llewa/laml/ScreenElementRoot;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    check-cast v0, Llewa/laml/elements/ImageScreenElement;

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mBlobVar:Llewa/laml/elements/ImageScreenElement;

    .line 537
    :cond_0
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mBlobVar:Llewa/laml/elements/ImageScreenElement;

    return-object v0
.end method

.method protected onLoad(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 522
    const-string v0, "column"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    .line 523
    const-string v0, "row"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Llewa/laml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mRow:I

    .line 524
    return-void
.end method

.method protected parseType()V
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Llewa/laml/data/VariableBinder$Variable;->parseType()V

    .line 542
    const-string v0, "blob.bitmap"

    iget-object v1, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const/16 v0, 0x3e9

    iput v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mType:I

    .line 544
    :cond_0
    return-void
.end method

.method public setNull(Llewa/laml/ScreenElementRoot;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    .line 547
    iget v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 548
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mStringVar:Llewa/laml/util/IndexedStringVariable;

    invoke-virtual {v0, v2}, Llewa/laml/util/IndexedStringVariable;->set(Ljava/lang/String;)V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-virtual {p0}, Llewa/laml/data/ContentProviderBinder$Variable;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Llewa/laml/data/ContentProviderBinder$Variable;->mNumberVar:Llewa/laml/util/IndexedNumberVariable;

    invoke-virtual {v0, v2}, Llewa/laml/util/IndexedNumberVariable;->set(Ljava/lang/Double;)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p0, p1}, Llewa/laml/data/ContentProviderBinder$Variable;->getImageElement(Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ImageScreenElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Llewa/laml/data/ContentProviderBinder$Variable;->getImageElement(Llewa/laml/ScreenElementRoot;)Llewa/laml/elements/ImageScreenElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Llewa/laml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
