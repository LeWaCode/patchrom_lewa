.class public Llewa/widget/dicon/DIcon;
.super Ljava/lang/Object;
.source "DIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/dicon/DIcon$IconChangeListener;,
        Llewa/widget/dicon/DIcon$BinderVar;
    }
.end annotation


# static fields
.field private static final CACHED:Z = true

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ICON:Ljava/lang/String; = "default.png"

.field private static final TAG:Ljava/lang/String; = "DICON"


# instance fields
.field private mBindedVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/widget/dicon/DIcon$BinderVar;",
            ">;"
        }
    .end annotation
.end field

.field private mCPProjections:[Ljava/lang/String;

.field private mCPSelection:Ljava/lang/String;

.field private mCPSelectionArgs:[Ljava/lang/String;

.field private mCPSortOrder:Ljava/lang/String;

.field private mCPUri:Landroid/net/Uri;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

.field private mContentReady:Z

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIconH:I

.field private mIconW:I

.field private mIntent:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field mObserver:Landroid/database/ContentObserver;

.field private mPaint:Landroid/graphics/Paint;

.field private mRenderElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llewa/widget/dicon/RenderElement;",
            ">;"
        }
    .end annotation
.end field

.field private mResPath:Ljava/lang/String;

.field private mScale:F

.field private mTargetScreenWidth:I

.field private mVarExps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llewa/widget/dicon/ValExp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/zip/ZipFile;Llewa/widget/dicon/DIcon$IconChangeListener;)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "resPath"
    .parameter "resPack"
    .parameter "changeListener"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    .line 52
    const/high16 v2, 0x3f80

    iput v2, p0, Llewa/widget/dicon/DIcon;->mScale:F

    .line 64
    iput-object p1, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    .line 66
    iput-object p3, p0, Llewa/widget/dicon/DIcon;->mResPath:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

    .line 68
    iput-object p2, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p4}, Llewa/widget/dicon/DIcon;->getXmlStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;

    move-result-object v1

    .line 70
    .local v1, xml:Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Llewa/widget/dicon/DIcon;->parseXml(Ljava/io/InputStream;)V

    .line 72
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    invoke-virtual {p0}, Llewa/widget/dicon/DIcon;->initBinderVars()V

    .line 78
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Llewa/widget/dicon/DIcon;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Llewa/widget/dicon/DIcon;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Llewa/widget/dicon/DIcon;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    return p1
.end method

.method static synthetic access$200(Llewa/widget/dicon/DIcon;)Llewa/widget/dicon/DIcon$IconChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Llewa/widget/dicon/DIcon;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private get(Llewa/widget/dicon/ResourcesLoader;)Landroid/graphics/Bitmap;
    .locals 35
    .parameter "resLoader"

    .prologue
    .line 700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 701
    :cond_0
    const-string v28, "default.png"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Llewa/widget/dicon/ResourcesLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 702
    .local v6, bmp:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 703
    invoke-virtual/range {p1 .. p1}, Llewa/widget/dicon/ResourcesLoader;->close()V

    .line 704
    const/16 p1, 0x0

    :cond_1
    move-object v8, v6

    .line 835
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 708
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Llewa/widget/dicon/ValExp;->initEvn(Ljava/util/HashMap;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 710
    new-instance v28, Landroid/graphics/Canvas;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Canvas;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCanvas:Landroid/graphics/Canvas;

    .line 712
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/dicon/DIcon;->mIconW:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/widget/dicon/DIcon;->mIconH:I

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 714
    .local v8, cacheBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v9, v0, Llewa/widget/dicon/DIcon;->mCanvas:Landroid/graphics/Canvas;

    .line 716
    .local v9, canvas:Landroid/graphics/Canvas;
    const/high16 v23, 0x3f80

    .line 717
    .local v23, tempScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llewa/widget/dicon/RenderElement;

    .line 718
    .local v12, element:Llewa/widget/dicon/RenderElement;
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->visibility:Llewa/widget/dicon/ValBool;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->visibility:Llewa/widget/dicon/ValBool;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValBool;->getValue()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 722
    :cond_5
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 725
    iget v0, v12, Llewa/widget/dicon/RenderElement;->type:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 727
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValString;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 729
    .local v20, resName:Ljava/lang/String;
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->srcIndex:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 730
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->srcIndex:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v17

    .line 731
    .local v17, index:I
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Llewa/widget/dicon/ResourcesLoader;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 736
    .end local v17           #index:I
    .local v6, bmp:Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v26

    .line 738
    .local v26, x:I
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v27

    .line 739
    .local v27, y:I
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->angle:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 740
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->angle:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v5

    .line 741
    .local v5, angle:I
    int-to-float v0, v5

    move/from16 v28, v0

    iget v0, v12, Llewa/widget/dicon/RenderElement;->centerX:I

    move/from16 v29, v0

    add-int v29, v29, v26

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v23

    iget v0, v12, Llewa/widget/dicon/RenderElement;->centerY:I

    move/from16 v30, v0

    add-int v30, v30, v27

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v23

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 745
    .end local v5           #angle:I
    :cond_6
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->alpha:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    .line 746
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->alpha:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v4

    .line 747
    .local v4, alpha:I
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 749
    .end local v4           #alpha:I
    :cond_7
    if-eqz v6, :cond_8

    .line 750
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x3fe0

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v23

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x3fe0

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    add-int v30, v30, v26

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v23

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    add-int v31, v31, v27

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v23

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3fe0

    add-double v31, v31, v33

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 755
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 758
    :cond_8
    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 733
    .end local v6           #bmp:Landroid/graphics/drawable/Drawable;
    .end local v26           #x:I
    .end local v27           #y:I
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Llewa/widget/dicon/ResourcesLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6       #bmp:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 760
    .end local v6           #bmp:Landroid/graphics/drawable/Drawable;
    .end local v20           #resName:Ljava/lang/String;
    :cond_a
    iget v0, v12, Llewa/widget/dicon/RenderElement;->type:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->reset()V

    .line 763
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->color:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 764
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->color:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v11

    .line 765
    .local v11, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 767
    .end local v11           #color:I
    :cond_b
    iget v0, v12, Llewa/widget/dicon/RenderElement;->textSize:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_c

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    iget v0, v12, Llewa/widget/dicon/RenderElement;->textSize:F

    move/from16 v29, v0

    mul-float v29, v29, v23

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 770
    :cond_c
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValString;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 771
    .local v24, text:Ljava/lang/String;
    if-eqz v24, :cond_4

    .line 772
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v26

    .line 773
    .restart local v26       #x:I
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v27

    .line 774
    .restart local v27       #y:I
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v23

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 777
    .end local v24           #text:Ljava/lang/String;
    .end local v26           #x:I
    .end local v27           #y:I
    :cond_d
    iget v0, v12, Llewa/widget/dicon/RenderElement;->type:I

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 778
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValString;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 779
    .restart local v24       #text:Ljava/lang/String;
    const-string v13, "default"

    .line 780
    .local v13, font:Ljava/lang/String;
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->font:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 781
    iget-object v13, v12, Llewa/widget/dicon/RenderElement;->font:Ljava/lang/String;

    .line 783
    :cond_e
    if-eqz v24, :cond_4

    .line 786
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v19

    .line 787
    .local v19, length:I
    if-eqz v24, :cond_4

    if-lez v19, :cond_4

    .line 788
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v26

    .line 789
    .restart local v26       #x:I
    iget-object v0, v12, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Llewa/widget/dicon/ValInt;->getValue()I

    move-result v27

    .line 790
    .restart local v27       #y:I
    move/from16 v18, v26

    .line 791
    .local v18, left:I
    const/16 v22, 0x0

    .line 792
    .local v22, strWidth:I
    const/16 v21, 0x0

    .line 793
    .local v21, strHeight:I
    iget v0, v12, Llewa/widget/dicon/RenderElement;->alignH:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 794
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move/from16 v0, v19

    if-ge v15, v0, :cond_10

    .line 795
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 796
    .local v7, c:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Llewa/widget/dicon/ResourcesLoader;->getFontPicture(Ljava/lang/String;C)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 797
    .local v10, cd:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_f

    .line 798
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    add-int v22, v22, v28

    .line 794
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 801
    .end local v7           #c:C
    .end local v10           #cd:Landroid/graphics/drawable/Drawable;
    :cond_10
    iget v0, v12, Llewa/widget/dicon/RenderElement;->w:I

    move/from16 v28, v0

    if-eqz v28, :cond_11

    iget v0, v12, Llewa/widget/dicon/RenderElement;->w:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 802
    iget v0, v12, Llewa/widget/dicon/RenderElement;->w:I

    move/from16 v28, v0

    sub-int v28, v28, v22

    div-int/lit8 v28, v28, 0x2

    add-int v18, v18, v28

    .line 805
    .end local v15           #i:I
    :cond_11
    iget v0, v12, Llewa/widget/dicon/RenderElement;->alignV:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 806
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 807
    .restart local v7       #c:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Llewa/widget/dicon/ResourcesLoader;->getFontPicture(Ljava/lang/String;C)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 808
    .restart local v10       #cd:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    .line 809
    iget v0, v12, Llewa/widget/dicon/RenderElement;->h:I

    move/from16 v28, v0

    if-eqz v28, :cond_12

    iget v0, v12, Llewa/widget/dicon/RenderElement;->h:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_12

    .line 810
    iget v0, v12, Llewa/widget/dicon/RenderElement;->h:I

    move/from16 v28, v0

    sub-int v28, v28, v21

    div-int/lit8 v28, v28, 0x2

    add-int v27, v27, v28

    .line 813
    .end local v7           #c:C
    .end local v10           #cd:Landroid/graphics/drawable/Drawable;
    :cond_12
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 814
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 815
    .restart local v7       #c:C
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Llewa/widget/dicon/ResourcesLoader;->getFontPicture(Ljava/lang/String;C)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 816
    .restart local v10       #cd:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_13

    .line 817
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    .line 818
    .local v25, w:I
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 819
    .local v14, h:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v30, v25, v18

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v23

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    add-int v31, v27, v14

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v23

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 823
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 824
    add-int v18, v18, v25

    .line 813
    .end local v14           #h:I
    .end local v25           #w:I
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 832
    .end local v7           #c:C
    .end local v10           #cd:Landroid/graphics/drawable/Drawable;
    .end local v12           #element:Llewa/widget/dicon/RenderElement;
    .end local v13           #font:Ljava/lang/String;
    .end local v15           #i:I
    .end local v18           #left:I
    .end local v19           #length:I
    .end local v21           #strHeight:I
    .end local v22           #strWidth:I
    .end local v24           #text:Ljava/lang/String;
    .end local v26           #x:I
    .end local v27           #y:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 833
    invoke-virtual/range {p1 .. p1}, Llewa/widget/dicon/ResourcesLoader;->close()V

    .line 834
    move-object/from16 v0, p0

    iput-object v8, v0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 657
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    .line 659
    :cond_0
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 661
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    .line 663
    :cond_1
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 664
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 665
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    .line 667
    :cond_2
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 668
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 669
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    .line 672
    :cond_3
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 673
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 674
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    .line 676
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    .line 677
    iput-object v2, p0, Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

    .line 678
    return-void
.end method

.method public get()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 681
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    .line 686
    :goto_0
    return-object v1

    .line 684
    :cond_0
    new-instance v0, Llewa/widget/dicon/ResourcesLoader;

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    iget-object v3, p0, Llewa/widget/dicon/DIcon;->mResPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Llewa/widget/dicon/ResourcesLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v0, resLoader:Llewa/widget/dicon/ResourcesLoader;
    invoke-direct {p0, v0}, Llewa/widget/dicon/DIcon;->get(Llewa/widget/dicon/ResourcesLoader;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/util/zip/ZipFile;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "resPack"

    .prologue
    .line 690
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    .line 695
    :goto_0
    return-object v1

    .line 693
    :cond_0
    new-instance v0, Llewa/widget/dicon/ResourcesLoader;

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Llewa/widget/dicon/ResourcesLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;)V

    .line 695
    .local v0, resLoader:Llewa/widget/dicon/ResourcesLoader;
    invoke-direct {p0, v0}, Llewa/widget/dicon/DIcon;->get(Llewa/widget/dicon/ResourcesLoader;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method getXmlStream(Ljava/util/zip/ZipFile;)Ljava/io/InputStream;
    .locals 5
    .parameter "resPack"

    .prologue
    const/4 v2, 0x0

    .line 96
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-object v2

    .line 101
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 102
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 103
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Z)V
    .locals 3
    .parameter "notifyChange"

    .prologue
    .line 81
    invoke-virtual {p0}, Llewa/widget/dicon/DIcon;->initObserver()V

    .line 83
    iget-boolean v1, p0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Llewa/widget/dicon/DIcon;->mCache:Landroid/graphics/Bitmap;

    .line 88
    :cond_0
    invoke-virtual {p0}, Llewa/widget/dicon/DIcon;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, icon:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mChangeListener:Llewa/widget/dicon/DIcon$IconChangeListener;

    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Llewa/widget/dicon/DIcon$IconChangeListener;->OnChange(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 93
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public initBinderVars()V
    .locals 6

    .prologue
    .line 238
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 277
    :cond_0
    return-void

    .line 241
    :cond_1
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llewa/widget/dicon/DIcon$BinderVar;

    .line 243
    .local v0, bindedVar:Llewa/widget/dicon/DIcon$BinderVar;
    iget v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    if-nez v2, :cond_3

    .line 244
    iget-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 245
    const-string v2, "0"

    iput-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    .line 247
    :cond_2
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v3, v0, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v4, Llewa/widget/dicon/ValExp;

    iget-object v5, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    invoke-direct {v4, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 249
    :cond_3
    iget v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 250
    iget-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 251
    const-string v2, "0"

    iput-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    .line 253
    :cond_4
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v3, v0, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v4, Llewa/widget/dicon/ValExp;

    iget-object v5, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    invoke-direct {v4, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :cond_5
    iget v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 256
    iget-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 257
    const-string v2, "0.0"

    iput-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    .line 259
    :cond_6
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v3, v0, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v4, Llewa/widget/dicon/ValExp;

    iget-object v5, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    invoke-direct {v4, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    :cond_7
    iget v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 262
    iget-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 263
    const-string v2, "0.0"

    iput-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    .line 265
    :cond_8
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v3, v0, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v4, Llewa/widget/dicon/ValExp;

    iget-object v5, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    invoke-direct {v4, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_9
    iget v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    .line 268
    iget-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 269
    const-string v2, ""

    iput-object v2, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    .line 271
    :cond_a
    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v3, v0, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v4, Llewa/widget/dicon/ValExp;

    iget-object v5, v0, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    invoke-static {v5}, Llewa/widget/dicon/ValExp;->toStringVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 274
    :cond_b
    const-string v2, "DICON"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR! bindedVar.type invalid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method initObserver()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCPUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 115
    :cond_0
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    .line 119
    :cond_1
    new-instance v0, Llewa/widget/dicon/DIcon$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Llewa/widget/dicon/DIcon$1;-><init>(Llewa/widget/dicon/DIcon;Landroid/os/Handler;)V

    iput-object v0, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    .line 137
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCPUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Llewa/widget/dicon/DIcon;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    invoke-virtual {p0}, Llewa/widget/dicon/DIcon;->updateBinderContent()Z

    move-result v0

    iput-boolean v0, p0, Llewa/widget/dicon/DIcon;->mContentReady:Z

    .line 142
    :cond_2
    return-void
.end method

.method public parseXml(Ljava/io/InputStream;)V
    .locals 21
    .parameter "is"

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 282
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 285
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    .line 290
    :cond_1
    if-nez p1, :cond_3

    .line 642
    if-eqz p1, :cond_2

    .line 644
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    const/16 p1, 0x0

    .line 652
    :cond_2
    :goto_1
    return-void

    .line 645
    :catch_0
    move-exception v7

    .line 647
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 293
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 294
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v19, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 296
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    .line 298
    .local v10, event:I
    move-object/from16 v0, p0

    iget-object v9, v0, Llewa/widget/dicon/DIcon;->mRenderElements:Ljava/util/ArrayList;

    .line 299
    .local v9, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    const/4 v8, 0x0

    .line 301
    .local v8, element:Llewa/widget/dicon/RenderElement;
    :goto_2
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v10, v0, :cond_4f

    .line 302
    packed-switch v10, :pswitch_data_0

    .line 632
    :cond_4
    :goto_3
    :pswitch_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    goto :goto_2

    .line 306
    :pswitch_1
    if-eqz v8, :cond_4

    .line 307
    iget-object v0, v8, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 312
    :cond_5
    iget-object v0, v8, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    goto :goto_3

    .line 326
    :pswitch_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Image"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 329
    new-instance v8, Llewa/widget/dicon/RenderElement;

    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    invoke-direct {v8}, Llewa/widget/dicon/RenderElement;-><init>()V

    .line 330
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->type:I

    .line 332
    const/4 v12, 0x0

    .local v12, i:I
    :goto_4
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 333
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 335
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    .line 336
    .local v13, left:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    .line 332
    .end local v13           #left:Ljava/lang/String;
    :cond_6
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 337
    :cond_7
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "y"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 339
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v18

    .line 340
    .local v18, top:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 635
    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    .end local v9           #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .end local v10           #event:I
    .end local v12           #i:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #top:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 637
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    if-eqz p1, :cond_2

    .line 644
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 649
    .end local v7           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 341
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    .restart local v9       #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .restart local v10       #event:I
    .restart local v12       #i:I
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_8
    :try_start_4
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alpha"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 343
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, alpha:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->alpha:Llewa/widget/dicon/ValInt;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 638
    .end local v2           #alpha:Ljava/lang/String;
    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    .end local v9           #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .end local v10           #event:I
    .end local v12           #i:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v7

    .line 640
    .local v7, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 642
    if-eqz p1, :cond_2

    .line 644
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 649
    :goto_7
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 345
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    .restart local v9       #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .restart local v10       #event:I
    .restart local v12       #i:I
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :try_start_7
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "angle"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 347
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, angle:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->angle:Llewa/widget/dicon/ValInt;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 642
    .end local v3           #angle:Ljava/lang/String;
    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    .end local v9           #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .end local v10           #event:I
    .end local v12           #i:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v19

    if-eqz p1, :cond_a

    .line 644
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 649
    :goto_8
    const/16 p1, 0x0

    :cond_a
    throw v19

    .line 349
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    .restart local v9       #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .restart local v10       #event:I
    .restart local v12       #i:I
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_b
    :try_start_9
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "centerX"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 351
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 352
    .local v17, temp:Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 353
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->centerX:I

    goto/16 :goto_5

    .line 355
    .end local v17           #temp:Ljava/lang/String;
    :cond_c
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "centerY"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 357
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 358
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 359
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->centerY:I

    goto/16 :goto_5

    .line 361
    .end local v17           #temp:Ljava/lang/String;
    :cond_d
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 362
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->id:Ljava/lang/String;

    goto/16 :goto_5

    .line 363
    :cond_e
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "src"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 364
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 365
    .local v16, src:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValString;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    goto/16 :goto_5

    .line 366
    .end local v16           #src:Ljava/lang/String;
    :cond_f
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "visibility"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 368
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 369
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValBool;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValBool;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->visibility:Llewa/widget/dicon/ValBool;

    goto/16 :goto_5

    .line 370
    .end local v17           #temp:Ljava/lang/String;
    :cond_10
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "index"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 372
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 373
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->srcIndex:Llewa/widget/dicon/ValInt;

    goto/16 :goto_5

    .line 377
    .end local v12           #i:I
    .end local v17           #temp:Ljava/lang/String;
    :cond_11
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Text"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 378
    new-instance v8, Llewa/widget/dicon/RenderElement;

    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    invoke-direct {v8}, Llewa/widget/dicon/RenderElement;-><init>()V

    .line 379
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->type:I

    .line 381
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_9
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 382
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 383
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 384
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    .line 381
    .end local v17           #temp:Ljava/lang/String;
    :cond_12
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 386
    :cond_13
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "y"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 387
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 388
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    goto :goto_a

    .line 389
    .end local v17           #temp:Ljava/lang/String;
    :cond_14
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "w"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 390
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 391
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->w:I

    goto :goto_a

    .line 392
    .end local v17           #temp:Ljava/lang/String;
    :cond_15
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "h"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 393
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 394
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->w:I

    goto :goto_a

    .line 395
    .end local v17           #temp:Ljava/lang/String;
    :cond_16
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alignH"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 397
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 398
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, "left"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 399
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto :goto_a

    .line 400
    :cond_17
    const-string v19, "center"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 401
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_a

    .line 402
    :cond_18
    const-string v19, "right"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 403
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_a

    .line 406
    .end local v17           #temp:Ljava/lang/String;
    :cond_19
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alignV"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 408
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 409
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, "top"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 410
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_a

    .line 411
    :cond_1a
    const-string v19, "center"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 412
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_a

    .line 413
    :cond_1b
    const-string v19, "right"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 414
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_a

    .line 416
    .end local v17           #temp:Ljava/lang/String;
    :cond_1c
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alpha"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 418
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 419
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->alpha:Llewa/widget/dicon/ValInt;

    goto/16 :goto_a

    .line 420
    .end local v17           #temp:Ljava/lang/String;
    :cond_1d
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "color"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 422
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 423
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Llewa/widget/dicon/ValInt;->CreateColor(Ljava/lang/String;)Llewa/widget/dicon/ValInt;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->color:Llewa/widget/dicon/ValInt;

    goto/16 :goto_a

    .line 424
    .end local v17           #temp:Ljava/lang/String;
    :cond_1e
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 425
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->id:Ljava/lang/String;

    goto/16 :goto_a

    .line 426
    :cond_1f
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "text"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 428
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 429
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValString;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    goto/16 :goto_a

    .line 430
    .end local v17           #temp:Ljava/lang/String;
    :cond_20
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 432
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 433
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->textSize:F

    goto/16 :goto_a

    .line 434
    .end local v17           #temp:Ljava/lang/String;
    :cond_21
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "visibility"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 436
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 437
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValBool;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValBool;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->visibility:Llewa/widget/dicon/ValBool;

    goto/16 :goto_a

    .line 441
    .end local v12           #i:I
    .end local v17           #temp:Ljava/lang/String;
    :cond_22
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "PicText"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_33

    .line 442
    new-instance v8, Llewa/widget/dicon/RenderElement;

    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    invoke-direct {v8}, Llewa/widget/dicon/RenderElement;-><init>()V

    .line 443
    .restart local v8       #element:Llewa/widget/dicon/RenderElement;
    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->type:I

    .line 445
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_b
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 446
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 447
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 448
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->x:Llewa/widget/dicon/ValInt;

    .line 445
    .end local v17           #temp:Ljava/lang/String;
    :cond_23
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 449
    :cond_24
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "y"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 450
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 451
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->y:Llewa/widget/dicon/ValInt;

    goto :goto_c

    .line 452
    .end local v17           #temp:Ljava/lang/String;
    :cond_25
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "w"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 453
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 454
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->w:I

    goto :goto_c

    .line 455
    .end local v17           #temp:Ljava/lang/String;
    :cond_26
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "h"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 456
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 457
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->h:I

    goto :goto_c

    .line 458
    .end local v17           #temp:Ljava/lang/String;
    :cond_27
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alignH"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 460
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 461
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, "left"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 462
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto :goto_c

    .line 463
    :cond_28
    const-string v19, "center"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 464
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_c

    .line 465
    :cond_29
    const-string v19, "right"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 466
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_c

    .line 468
    .end local v17           #temp:Ljava/lang/String;
    :cond_2a
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alignV"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 470
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 471
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, "top"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 472
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_c

    .line 473
    :cond_2b
    const-string v19, "center"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 474
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_c

    .line 475
    :cond_2c
    const-string v19, "right"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 476
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->alignH:I

    goto/16 :goto_c

    .line 478
    .end local v17           #temp:Ljava/lang/String;
    :cond_2d
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "font"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 480
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 481
    .restart local v17       #temp:Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->font:Ljava/lang/String;

    goto/16 :goto_c

    .line 482
    .end local v17           #temp:Ljava/lang/String;
    :cond_2e
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "alpha"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 484
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 485
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValInt;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValInt;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->alpha:Llewa/widget/dicon/ValInt;

    goto/16 :goto_c

    .line 486
    .end local v17           #temp:Ljava/lang/String;
    :cond_2f
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 487
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->id:Ljava/lang/String;

    goto/16 :goto_c

    .line 488
    :cond_30
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "text"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31

    .line 490
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 491
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValString;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->src:Llewa/widget/dicon/ValString;

    goto/16 :goto_c

    .line 492
    .end local v17           #temp:Ljava/lang/String;
    :cond_31
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_32

    .line 494
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 495
    .restart local v17       #temp:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    iput v0, v8, Llewa/widget/dicon/RenderElement;->textSize:F

    goto/16 :goto_c

    .line 496
    .end local v17           #temp:Ljava/lang/String;
    :cond_32
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "visibility"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 498
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 499
    .restart local v17       #temp:Ljava/lang/String;
    new-instance v19, Llewa/widget/dicon/ValBool;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Llewa/widget/dicon/ValBool;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v8, Llewa/widget/dicon/RenderElement;->visibility:Llewa/widget/dicon/ValBool;

    goto/16 :goto_c

    .line 503
    .end local v12           #i:I
    .end local v17           #temp:Ljava/lang/String;
    :cond_33
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Var"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_39

    .line 506
    const/4 v14, 0x0

    .line 507
    .local v14, name:Ljava/lang/String;
    const/4 v11, 0x0

    .line 508
    .local v11, expression:Ljava/lang/String;
    const/4 v5, 0x0

    .line 510
    .local v5, constant:Z
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_d
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_38

    .line 511
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "name"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_35

    .line 512
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    .line 510
    :cond_34
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 513
    :cond_35
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "expression"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_36

    .line 515
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    .line 516
    :cond_36
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "const"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_34

    .line 518
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, constr:Ljava/lang/String;
    if-eqz v6, :cond_37

    const-string v19, "true"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_37

    .line 520
    const/4 v5, 0x1

    goto :goto_e

    .line 522
    :cond_37
    const/4 v5, 0x0

    goto :goto_e

    .line 526
    .end local v6           #constr:Ljava/lang/String;
    :cond_38
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    move-object/from16 v19, v0

    new-instance v20, Llewa/widget/dicon/ValExp;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v5}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 532
    .end local v5           #constant:Z
    .end local v11           #expression:Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #name:Ljava/lang/String;
    :cond_39
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "ContentProviderBinder"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3f

    .line 534
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_f
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 535
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "uri"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3b

    .line 536
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 537
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_3a

    .line 538
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCPUri:Landroid/net/Uri;

    .line 534
    .end local v17           #temp:Ljava/lang/String;
    :cond_3a
    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 540
    :cond_3b
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "columns"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 542
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 543
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCPProjections:[Ljava/lang/String;

    goto :goto_10

    .line 544
    .end local v17           #temp:Ljava/lang/String;
    :cond_3c
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "slection"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3d

    .line 546
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCPSelection:Ljava/lang/String;

    goto :goto_10

    .line 547
    :cond_3d
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "slectionArgs"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3e

    .line 549
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 550
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCPSelectionArgs:[Ljava/lang/String;

    goto :goto_10

    .line 551
    .end local v17           #temp:Ljava/lang/String;
    :cond_3e
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "order"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3a

    .line 553
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Llewa/widget/dicon/DIcon;->mCPSortOrder:Ljava/lang/String;

    goto :goto_10

    .line 556
    .end local v12           #i:I
    :cond_3f
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "BinderVar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4a

    .line 558
    new-instance v4, Llewa/widget/dicon/DIcon$BinderVar;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Llewa/widget/dicon/DIcon$BinderVar;-><init>(Llewa/widget/dicon/DIcon;)V

    .line 559
    .local v4, binderVar:Llewa/widget/dicon/DIcon$BinderVar;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    .line 560
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_11
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_49

    .line 561
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "name"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_41

    .line 562
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 563
    .restart local v17       #temp:Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    .line 560
    .end local v17           #temp:Ljava/lang/String;
    :cond_40
    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 564
    :cond_41
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "column"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_42

    .line 566
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 567
    .restart local v17       #temp:Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    goto :goto_12

    .line 568
    .end local v17           #temp:Ljava/lang/String;
    :cond_42
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "row"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_43

    .line 569
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 570
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_40

    .line 571
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    goto :goto_12

    .line 573
    .end local v17           #temp:Ljava/lang/String;
    :cond_43
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "type"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_48

    .line 575
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 576
    .restart local v17       #temp:Ljava/lang/String;
    const-string v19, "int"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_44

    .line 577
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    goto :goto_12

    .line 578
    :cond_44
    const-string v19, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_45

    .line 579
    const/16 v19, 0x4

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    goto :goto_12

    .line 580
    :cond_45
    const-string v19, "float"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_46

    .line 581
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    goto :goto_12

    .line 582
    :cond_46
    const-string v19, "long"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_47

    .line 583
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    goto/16 :goto_12

    .line 584
    :cond_47
    const-string v19, "double"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    .line 585
    const/16 v19, 0x3

    move/from16 v0, v19

    iput v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    goto/16 :goto_12

    .line 587
    .end local v17           #temp:Ljava/lang/String;
    :cond_48
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "default"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_40

    .line 589
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 590
    .restart local v17       #temp:Ljava/lang/String;
    move-object/from16 v0, v17

    iput-object v0, v4, Llewa/widget/dicon/DIcon$BinderVar;->defaultValue:Ljava/lang/String;

    goto/16 :goto_12

    .line 594
    .end local v17           #temp:Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 595
    .end local v4           #binderVar:Llewa/widget/dicon/DIcon$BinderVar;
    .end local v12           #i:I
    :cond_4a
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Icon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 598
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_13
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_4

    .line 599
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "width"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4c

    .line 600
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 601
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_4b

    .line 602
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Llewa/widget/dicon/DIcon;->mIconW:I

    .line 598
    .end local v17           #temp:Ljava/lang/String;
    :cond_4b
    :goto_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 604
    :cond_4c
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "height"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4d

    .line 606
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 607
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_4b

    .line 608
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Llewa/widget/dicon/DIcon;->mIconH:I

    goto :goto_14

    .line 610
    .end local v17           #temp:Ljava/lang/String;
    :cond_4d
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "screenWidth"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4b

    .line 612
    invoke-interface {v15, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    .line 613
    .restart local v17       #temp:Ljava/lang/String;
    if-eqz v17, :cond_4b

    .line 614
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Llewa/widget/dicon/DIcon;->mTargetScreenWidth:I

    goto :goto_14

    .line 623
    .end local v12           #i:I
    .end local v17           #temp:Ljava/lang/String;
    :pswitch_3
    if-eqz v8, :cond_4e

    .line 624
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 628
    :cond_4e
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 642
    :cond_4f
    if-eqz p1, :cond_2

    .line 644
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 649
    :goto_15
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 645
    :catch_3
    move-exception v7

    .line 647
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 645
    .end local v8           #element:Llewa/widget/dicon/RenderElement;
    .end local v9           #elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llewa/widget/dicon/RenderElement;>;"
    .end local v10           #event:I
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v7, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v7

    .line 647
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 645
    :catch_5
    move-exception v7

    .line 647
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 645
    .end local v7           #e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 647
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public updateBinderContent()Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 163
    const/4 v7, 0x0

    .line 165
    .local v7, currRow:I
    const/4 v8, 0x0

    .line 166
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v9

    .line 169
    :cond_1
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mCPUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Llewa/widget/dicon/DIcon;->mCPUri:Landroid/net/Uri;

    iget-object v2, p0, Llewa/widget/dicon/DIcon;->mCPProjections:[Ljava/lang/String;

    iget-object v3, p0, Llewa/widget/dicon/DIcon;->mCPSelection:Ljava/lang/String;

    iget-object v4, p0, Llewa/widget/dicon/DIcon;->mCPSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Llewa/widget/dicon/DIcon;->mCPSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 179
    :goto_1
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    .line 183
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mBindedVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Llewa/widget/dicon/DIcon$BinderVar;

    .line 184
    .local v6, bindedVar:Llewa/widget/dicon/DIcon$BinderVar;
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    if-gez v0, :cond_2

    .line 185
    const-string v0, "DICON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR! bindedVar.row invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v6           #bindedVar:Llewa/widget/dicon/DIcon$BinderVar;
    .end local v11           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 175
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "DICON"

    const-string v1, "Attempt to launch content provider before system ready"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v8, 0x0

    goto :goto_1

    .line 189
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #bindedVar:Llewa/widget/dicon/DIcon$BinderVar;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_2
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    if-eq v7, v0, :cond_3

    .line 190
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    iget v7, v6, Llewa/widget/dicon/DIcon$BinderVar;->row:I

    .line 193
    :cond_3
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    if-nez v0, :cond_4

    .line 194
    iget-object v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 196
    .local v12, temp:I
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v1, v6, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v2, Llewa/widget/dicon/ValExp;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 198
    .end local v12           #temp:I
    :cond_4
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 199
    iget-object v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 201
    .local v12, temp:J
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v1, v6, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v2, Llewa/widget/dicon/ValExp;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    .end local v12           #temp:J
    :cond_5
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 204
    iget-object v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v12

    .line 206
    .local v12, temp:F
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v1, v6, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v2, Llewa/widget/dicon/ValExp;

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 208
    .end local v12           #temp:F
    :cond_6
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 209
    iget-object v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 211
    .local v12, temp:D
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v1, v6, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v2, Llewa/widget/dicon/ValExp;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 213
    .end local v12           #temp:D
    :cond_7
    iget v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 214
    iget-object v0, v6, Llewa/widget/dicon/DIcon$BinderVar;->columnName:Ljava/lang/String;

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, temp:Ljava/lang/String;
    iget-object v0, p0, Llewa/widget/dicon/DIcon;->mVarExps:Ljava/util/HashMap;

    iget-object v1, v6, Llewa/widget/dicon/DIcon$BinderVar;->bindedName:Ljava/lang/String;

    new-instance v2, Llewa/widget/dicon/ValExp;

    invoke-static {v12}, Llewa/widget/dicon/ValExp;->toStringVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Llewa/widget/dicon/ValExp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 219
    .end local v12           #temp:Ljava/lang/String;
    :cond_8
    const-string v0, "DICON"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR! bindedVar.type invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Llewa/widget/dicon/DIcon$BinderVar;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 223
    .end local v6           #bindedVar:Llewa/widget/dicon/DIcon$BinderVar;
    :cond_9
    const/4 v9, 0x1

    .line 229
    .end local v11           #i$:Ljava/util/Iterator;
    .local v9, dbInited:Z
    :goto_3
    if-eqz v8, :cond_0

    .line 230
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 225
    .end local v9           #dbInited:Z
    :cond_a
    invoke-virtual {p0}, Llewa/widget/dicon/DIcon;->initBinderVars()V

    .line 226
    const/4 v9, 0x0

    .restart local v9       #dbInited:Z
    goto :goto_3
.end method
