.class Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;
.super Llewa/laml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Llewa/laml/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Llewa/laml/ScreenElementRoot;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 169
    invoke-direct {p0, p1}, Llewa/laml/elements/BitmapProvider;-><init>(Llewa/laml/ScreenElementRoot;)V

    .line 170
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "src"

    .prologue
    .line 157
    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Llewa/laml/elements/VirtualScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Llewa/laml/elements/VirtualScreen;

    invoke-virtual {v0}, Llewa/laml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 161
    invoke-super {p0, p1}, Llewa/laml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;->mRoot:Llewa/laml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Llewa/laml/ScreenElementRoot;->findElement(Ljava/lang/String;)Llewa/laml/elements/ScreenElement;

    move-result-object v0

    .line 163
    .local v0, se:Llewa/laml/elements/ScreenElement;
    instance-of v1, v0, Llewa/laml/elements/VirtualScreen;

    if-eqz v1, :cond_0

    .line 164
    check-cast v0, Llewa/laml/elements/VirtualScreen;

    .end local v0           #se:Llewa/laml/elements/ScreenElement;
    iput-object v0, p0, Llewa/laml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Llewa/laml/elements/VirtualScreen;

    .line 166
    :cond_0
    return-void
.end method
