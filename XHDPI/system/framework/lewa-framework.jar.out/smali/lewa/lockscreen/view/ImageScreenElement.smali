.class public Llewa/lockscreen/view/ImageScreenElement;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;
    }
.end annotation


# static fields
.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Image"


# instance fields
.field private firstTimeStart:Z

.field private imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private isLewaIndexPNG:Z

.field private mAntiAlias:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapName:Ljava/lang/String;

.field private mDesRect:Landroid/graphics/Rect;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/lockscreen/view/AnimatedElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mSetBitmap:Landroid/graphics/Bitmap;

.field private mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

.field private resourceManager:Llewa/lockscreen/view/ResourceManager;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 5
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 45
    iput-boolean v1, p0, Llewa/lockscreen/view/ImageScreenElement;->firstTimeStart:Z

    .line 46
    iput-boolean v1, p0, Llewa/lockscreen/view/ImageScreenElement;->isLewaIndexPNG:Z

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    .line 52
    iget-object v3, p2, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    iput-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->resourceManager:Llewa/lockscreen/view/ResourceManager;

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 55
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 63
    .local v0, porterduffxfermode:Landroid/graphics/PorterDuffXfermode;
    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    const-string v3, "src"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lewa_index.png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Llewa/lockscreen/view/ImageScreenElement;->isLewaIndexPNG:Z

    .line 66
    iget-boolean v3, p0, Llewa/lockscreen/view/ImageScreenElement;->isLewaIndexPNG:Z

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Llewa/lockscreen/view/ImageScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_first_time_unlock_prompt"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Llewa/lockscreen/view/ImageScreenElement;->firstTimeStart:Z

    .line 69
    iget-boolean v1, p0, Llewa/lockscreen/view/ImageScreenElement;->firstTimeStart:Z

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen_first_time_unlock_prompt"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 76
    invoke-virtual {p0}, Llewa/lockscreen/view/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    .line 77
    return-void
.end method

.method static synthetic access$000(Llewa/lockscreen/view/ImageScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Llewa/lockscreen/view/ImageScreenElement;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Llewa/lockscreen/view/ImageScreenElement;)Llewa/lockscreen/view/ResourceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->resourceManager:Llewa/lockscreen/view/ResourceManager;

    return-object v0
.end method

.method static synthetic access$202(Llewa/lockscreen/view/ImageScreenElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmapName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Llewa/lockscreen/view/ImageScreenElement;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    return-object v0
.end method

.method private clearImageCache()V
    .locals 7

    .prologue
    .line 200
    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    :try_start_0
    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 205
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 206
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 212
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ImageScreenElement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearImageCache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v4, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v5, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 92
    :cond_0
    iget-object v5, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 94
    const-string v5, "Mask"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 96
    .local v4, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 97
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 98
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 99
    .local v1, childElement:Lorg/w3c/dom/Element;
    new-instance v0, Llewa/lockscreen/view/AnimatedElement;

    iget-object v5, p0, Llewa/lockscreen/view/ImageScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-direct {v0, v1, v5}, Llewa/lockscreen/view/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 100
    .local v0, animatedElement:Llewa/lockscreen/view/AnimatedElement;
    iget-object v5, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0           #animatedElement:Llewa/lockscreen/view/AnimatedElement;
    .end local v1           #childElement:Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Llewa/lockscreen/view/AnimatedElement;)V
    .locals 12
    .parameter "canvas"
    .parameter "animatedelement"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getRotationAngle()F

    move-result v8

    .line 111
    .local v8, rotationAngle:F
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getCenterX()F

    move-result v4

    .line 112
    .local v4, centerX:F
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getCenterY()F

    move-result v5

    .line 114
    .local v5, centerY:F
    invoke-virtual {p1, v8, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 116
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getBitmap()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, bitmapName:Ljava/lang/String;
    iget-object v11, p0, Llewa/lockscreen/view/ImageScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    iget-object v11, v11, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    invoke-virtual {v11, v3}, Llewa/lockscreen/view/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v9

    .line 119
    .local v9, x:I
    const/4 v0, 0x0

    .line 120
    .local v0, animX:I
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->isAlignAbsolute()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 121
    iget-object v11, p0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v0

    .line 126
    :goto_0
    sub-int v11, v9, v0

    int-to-float v6, v11

    .line 129
    .local v6, deltaX:F
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v10

    .line 130
    .local v10, y:I
    const/4 v1, 0x0

    .line 131
    .local v1, animY:I
    invoke-virtual {p2}, Llewa/lockscreen/view/AnimatedElement;->isAlignAbsolute()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 132
    iget-object v11, p0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v11}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v1

    .line 137
    :goto_1
    sub-int v11, v10, v1

    int-to-float v7, v11

    .line 140
    .local v7, deltaY:F
    iget-object v11, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    return-void

    .line 123
    .end local v1           #animY:I
    .end local v6           #deltaX:F
    .end local v7           #deltaY:F
    .end local v10           #y:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    .restart local v1       #animY:I
    .restart local v6       #deltaX:F
    .restart local v10       #y:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    invoke-virtual {v0}, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->interrupt()V

    .line 220
    iput-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    .line 222
    :cond_0
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->finish()V

    .line 223
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 225
    iput-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 228
    :cond_1
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    iput-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 233
    :cond_2
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 235
    iput-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    .line 238
    :cond_3
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    iput-object v1, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 242
    :cond_4
    invoke-direct {p0}, Llewa/lockscreen/view/ImageScreenElement;->clearImageCache()V

    .line 243
    return-void
.end method

.method protected getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 157
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v2}, Llewa/lockscreen/view/AnimatedElement;->getBitmap()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, bitmapName:Ljava/lang/String;
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmapName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmapName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->imageCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 167
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    :cond_3
    new-instance v2, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    invoke-direct {v2, p0, v1}, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;-><init>(Llewa/lockscreen/view/ImageScreenElement;Ljava/lang/String;)V

    iput-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    .line 171
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mThread:Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;

    invoke-virtual {v2}, Llewa/lockscreen/view/ImageScreenElement$LoadBitmapThread;->start()V

    .line 172
    iget-object v0, p0, Llewa/lockscreen/view/ImageScreenElement;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Llewa/lockscreen/view/AnimatedScreenElement;->init()V

    .line 147
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 154
    :cond_0
    return-void

    .line 150
    :cond_1
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 151
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 152
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v2}, Llewa/lockscreen/view/AnimatedElement;->init()V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "ImageScreenElement"

    const-string v1, "node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Llewa/lockscreen/view/DomParseException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Llewa/lockscreen/view/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    .line 86
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/lockscreen/view/ImageScreenElement;->firstTimeStart:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/lockscreen/view/ImageScreenElement;->isLewaIndexPNG:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/view/ImageScreenElement;->isVisible()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getAlpha()I

    move-result v5

    .line 279
    .local v5, alpha:I
    if-lez v5, :cond_0

    .line 283
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/view/ImageScreenElement;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 285
    .local v15, bitmap:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v32

    if-nez v32, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getWidth()I

    move-result v29

    .line 291
    .local v29, width:I
    if-gez v29, :cond_2

    .line 292
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 295
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getHeight()I

    move-result v20

    .line 296
    .local v20, height:I
    if-gez v20, :cond_3

    .line 297
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-nez v32, :cond_8

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getRotationAngle()F

    move-result v25

    .line 306
    .local v25, rotationAngle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v30

    .line 308
    .local v30, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getCenterX()F

    move-result v17

    .line 310
    .local v17, centerX:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v13, v32, v17

    .line 312
    .local v13, anim_X_CenterX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v31

    .line 314
    .local v31, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getCenterY()F

    move-result v18

    .line 316
    .local v18, centerY:F
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v14, v32, v18

    .line 318
    .local v14, anim_Y_CenterY:F
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/ImageScreenElement;->getLeft(II)I

    move-result v22

    .line 321
    .local v22, left:I
    add-int v23, v22, v29

    .line 323
    .local v23, left_width:I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/ImageScreenElement;->getTop(II)I

    move-result v27

    .line 324
    .local v27, top:I
    add-int v28, v27, v20

    .line 326
    .local v28, top_height:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v32

    if-eqz v32, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getBitmap()Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, bitmapName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Llewa/lockscreen/view/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v24

    .line 329
    .local v24, ninepatch:Landroid/graphics/NinePatch;
    if-eqz v24, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    add-int v33, v30, v29

    add-int v34, v31, v20

    move-object/from16 v0, v32

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 350
    .end local v16           #bitmapName:Ljava/lang/String;
    .end local v24           #ninepatch:Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 333
    .restart local v16       #bitmapName:Ljava/lang/String;
    .restart local v24       #ninepatch:Landroid/graphics/NinePatch;
    :cond_4
    const-string v32, "ImageScreenElement"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Llewa/lockscreen/view/AnimatedElement;->getBitmap()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    .end local v16           #bitmapName:Ljava/lang/String;
    .end local v24           #ninepatch:Landroid/graphics/NinePatch;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getWidth()I

    move-result v32

    if-gtz v32, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getHeight()I

    move-result v32

    if-lez v32, :cond_7

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v23

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 338
    const/16 v32, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v19

    .line 340
    .local v19, e:Ljava/lang/Exception;
    const-string v32, "ImageScreenElement"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "the bitmap(0) has been recyled"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    .end local v19           #e:Ljava/lang/Exception;
    :cond_7
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 345
    :catch_1
    move-exception v19

    .line 346
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v32, "ImageScreenElement"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "the bitmap(1) has been recyled"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v13           #anim_X_CenterX:F
    .end local v14           #anim_Y_CenterY:F
    .end local v17           #centerX:F
    .end local v18           #centerY:F
    .end local v19           #e:Ljava/lang/Exception;
    .end local v22           #left:I
    .end local v23           #left_width:I
    .end local v25           #rotationAngle:F
    .end local v27           #top:I
    .end local v28           #top_height:I
    .end local v30           #x:I
    .end local v31           #y:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getMaxWidth()I

    move-result v9

    .line 353
    .local v9, animMaxWidth:I
    if-gez v9, :cond_9

    .line 354
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 357
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getMaxHeight()I

    move-result v8

    .line 358
    .local v8, animMaxHeight:I
    if-gez v8, :cond_a

    .line 359
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 362
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    if-nez v32, :cond_b

    .line 364
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v32

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 367
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v32, v0

    if-nez v32, :cond_c

    .line 368
    new-instance v32, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 370
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sget-object v34, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v32 .. v34}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 372
    if-gtz v29, :cond_d

    if-lez v20, :cond_e

    .line 373
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v29

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 383
    .local v26, size:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Llewa/lockscreen/view/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Llewa/lockscreen/view/AnimatedElement;)V

    .line 383
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 376
    .end local v21           #i:I
    .end local v26           #size:I
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 378
    :catch_2
    move-exception v19

    .line 379
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v32, "ImageScreenElement"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "the bitmap(2) has been recyled"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 387
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v21       #i:I
    .restart local v26       #size:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getRotationAngle()F

    move-result v10

    .line 391
    .local v10, animRotationAngle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v11

    .line 392
    .local v11, animX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getCenterX()F

    move-result v6

    .line 393
    .local v6, animCenterX:F
    int-to-float v0, v11

    move/from16 v32, v0

    add-float v13, v32, v6

    .line 395
    .restart local v13       #anim_X_CenterX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v12

    .line 396
    .local v12, animY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Llewa/lockscreen/view/AnimatedElement;->getCenterY()F

    move-result v7

    .line 397
    .local v7, animCenterY:F
    int-to-float v0, v12

    move/from16 v32, v0

    add-float v14, v32, v7

    .line 399
    .restart local v14       #anim_Y_CenterY:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v13, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 403
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Llewa/lockscreen/view/ImageScreenElement;->getLeft(II)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Llewa/lockscreen/view/ImageScreenElement;->getTop(II)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v35, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 407
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 404
    :catch_3
    move-exception v19

    .line 405
    .restart local v19       #e:Ljava/lang/Exception;
    const-string v32, "ImageScreenElement"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "the bitmap(3) has been recyled"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 246
    iput-object p1, p0, Llewa/lockscreen/view/ImageScreenElement;->mSetBitmap:Landroid/graphics/Bitmap;

    .line 247
    return-void
.end method

.method public tick(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 251
    invoke-virtual {p0}, Llewa/lockscreen/view/ImageScreenElement;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    :cond_0
    return-void

    .line 255
    :cond_1
    invoke-super {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;->tick(J)V

    .line 257
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 262
    iget-object v2, p0, Llewa/lockscreen/view/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llewa/lockscreen/view/AnimatedElement;

    invoke-virtual {v2, p1, p2}, Llewa/lockscreen/view/AnimatedElement;->tick(J)V

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
