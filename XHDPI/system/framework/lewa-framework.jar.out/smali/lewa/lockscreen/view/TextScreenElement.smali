.class public Llewa/lockscreen/view/TextScreenElement;
.super Llewa/lockscreen/view/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x12

.field private static final PADDING:I = 0x32

.field private static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field private static final SHADOW_LARGE_RADIUS:F = 4.0f

.field private static final SHADOW_Y_OFFSET:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "TextScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field private static fontChanged:Ljava/lang/String;


# instance fields
.field private mColor:I

.field protected mFormat:Ljava/lang/String;

.field protected mFormatVar:Llewa/lockscreen/view/Variable;

.field private mLastPara:I

.field private mLastParaStr:Ljava/lang/String;

.field private mLastText:Ljava/lang/String;

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousTime:J

.field private mShowShade:Z

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private num:I

.field private paras:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Llewa/lockscreen/view/TextScreenElement;->fontChanged:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V
    .locals 2
    .parameter "element"
    .parameter "screenContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Llewa/lockscreen/view/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Llewa/lockscreen/view/TextScreenElement;->mLastPara:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mLastParaStr:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mLastText:Ljava/lang/String;

    .line 37
    iput v1, p0, Llewa/lockscreen/view/TextScreenElement;->num:I

    .line 38
    iput-boolean v1, p0, Llewa/lockscreen/view/TextScreenElement;->mShowShade:Z

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 47
    const v0, 0x7f7ffffd

    iput v0, p0, Llewa/lockscreen/view/TextScreenElement;->mMarqueePos:F

    .line 48
    invoke-virtual {p0, p1}, Llewa/lockscreen/view/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 49
    return-void
.end method

.method private setTypeface(Landroid/graphics/Paint;)V
    .locals 5
    .parameter "paint"

    .prologue
    .line 52
    const-string v3, "persist.sys.font"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, changed:Ljava/lang/String;
    sget-object v3, Llewa/lockscreen/view/TextScreenElement;->fontChanged:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Llewa/lockscreen/view/TextScreenElement;->fontChanged:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 55
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/face/fonts/Roboto-Rugular.ttf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, lewa:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/face/fonts/.original"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, flag:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #lewa:Ljava/io/File;
    const-string v3, "/system/fonts/Roboto-Rugular.ttf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v2       #lewa:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 62
    :cond_2
    sput-object v0, Llewa/lockscreen/view/TextScreenElement;->fontChanged:Ljava/lang/String;

    .line 67
    .end local v1           #flag:Ljava/io/File;
    .end local v2           #lewa:Ljava/io/File;
    :cond_3
    :goto_0
    return-void

    .line 65
    :cond_4
    sput-object v0, Llewa/lockscreen/view/TextScreenElement;->fontChanged:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getText()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 185
    const-string v3, ""

    .line 186
    .local v3, text:Ljava/lang/String;
    const-string v0, ""

    .line 188
    .local v0, format:Ljava/lang/String;
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 189
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 190
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    .line 191
    const-string v2, ""

    .line 192
    .local v2, paraStr:Ljava/lang/String;
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->paras:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "paras"

    iget-object v6, p0, Llewa/lockscreen/view/TextScreenElement;->paras:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putStrTransform(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "paras"

    invoke-virtual {v4, v5}, Llewa/lockscreen/view/Expression;->getStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_0
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mLastParaStr:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    iget-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 199
    const-string v4, "%s"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iput-object v2, p0, Llewa/lockscreen/view/TextScreenElement;->mLastParaStr:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mLastText:Ljava/lang/String;

    .line 203
    :cond_1
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mLastText:Ljava/lang/String;

    .line 228
    .end local v2           #paraStr:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 205
    :cond_3
    const/4 v1, 0x0

    .line 206
    .local v1, para:I
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->paras:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 207
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "paras"

    iget-object v6, p0, Llewa/lockscreen/view/TextScreenElement;->paras:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->putDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->expression:Llewa/lockscreen/view/Expression;

    const-string v5, "paras"

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Llewa/lockscreen/view/Expression;->getDou(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v1

    .line 210
    :cond_4
    iget v4, p0, Llewa/lockscreen/view/TextScreenElement;->mLastPara:I

    if-eq v4, v1, :cond_7

    .line 211
    iget-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 212
    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    const-string v5, "%d%%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_5

    .line 213
    const-string v4, "%d%%"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_5
    const-string v4, "%d"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_6

    .line 217
    const-string v4, "%d"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_6
    iput v1, p0, Llewa/lockscreen/view/TextScreenElement;->mLastPara:I

    .line 220
    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mLastText:Ljava/lang/String;

    .line 222
    :cond_7
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mLastText:Ljava/lang/String;

    .line 223
    goto :goto_0

    .line 226
    .end local v1           #para:I
    :cond_8
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public load(Lorg/w3c/dom/Element;)V
    .locals 8
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v3, "TextScreenElement"

    const-string v4, "node is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Llewa/lockscreen/view/DomParseException;

    const-string v4, "node is null"

    invoke-direct {v3, v4}, Llewa/lockscreen/view/DomParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    const-string v3, "text"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mText:Ljava/lang/String;

    .line 77
    const-string v3, "paras"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->paras:Ljava/lang/String;

    .line 79
    const-string v3, "format"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 82
    :try_start_0
    const-string v3, "color"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Llewa/lockscreen/view/TextScreenElement;->mColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    const-string v3, "showShade"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, showShade:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Llewa/lockscreen/view/TextScreenElement;->mShowShade:Z

    .line 92
    :cond_1
    const-string v3, "size"

    const/16 v4, 0x12

    invoke-static {p1, v3, v4}, Llewa/lockscreen/view/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Llewa/lockscreen/view/TextScreenElement;->mSize:I

    .line 93
    const-string v3, "marqueeSpeed"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Llewa/lockscreen/view/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Llewa/lockscreen/view/TextScreenElement;->mMarqueeSpeed:I

    .line 95
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->mAlign:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Llewa/lockscreen/view/TextScreenElement;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Llewa/lockscreen/view/TextScreenElement;->mSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-boolean v3, p0, Llewa/lockscreen/view/TextScreenElement;->mShowShade:Z

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    const/high16 v7, -0x2300

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 102
    :cond_2
    const-string v3, "bold"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, bold:Z
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 104
    iget-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v3}, Llewa/lockscreen/view/TextScreenElement;->setTypeface(Landroid/graphics/Paint;)V

    .line 105
    new-instance v3, Llewa/lockscreen/view/AnimatedElement;

    iget-object v4, p0, Llewa/lockscreen/view/TextScreenElement;->screenContext:Llewa/lockscreen/view/ScreenContext;

    invoke-direct {v3, p1, v4}, Llewa/lockscreen/view/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)V

    iput-object v3, p0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    .line 106
    return-void

    .line 83
    .end local v0           #bold:Z
    .end local v2           #showShade:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 84
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "TextScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The color is wrong, mColor == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Llewa/lockscreen/view/TextScreenElement;->mColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/high16 v3, -0x1

    iput v3, p0, Llewa/lockscreen/view/TextScreenElement;->mColor:I

    goto/16 :goto_0
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 110
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/view/TextScreenElement;->isVisible()Z

    move-result v23

    if-nez v23, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getAlpha()I

    move-result v3

    .line 114
    .local v3, alpha:I
    if-lez v3, :cond_0

    .line 118
    invoke-virtual/range {p0 .. p0}, Llewa/lockscreen/view/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v14

    .line 119
    .local v14, text:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getWidth()I

    move-result v18

    .line 127
    .local v18, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getX()I

    move-result v19

    .line 128
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getY()I

    move-result v21

    .line 130
    .local v21, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getRotationAngle()F

    move-result v4

    .line 132
    .local v4, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getCenterX()F

    move-result v5

    .line 133
    .local v5, centerX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mAni:Llewa/lockscreen/view/AnimatedElement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Llewa/lockscreen/view/AnimatedElement;->getCenterY()F

    move-result v6

    .line 135
    .local v6, centerY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getTextSize()F

    move-result v15

    .line 137
    .local v15, textSize:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 139
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v20, v23, v5

    .line 140
    .local v20, x_centerX:F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v23, v6

    .line 142
    .local v22, y_centerY:F
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 144
    if-lez v18, :cond_2

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Llewa/lockscreen/view/TextScreenElement;->getLeft(II)I

    move-result v12

    .line 146
    .local v12, left:I
    add-int/lit8 v23, v21, -0xa

    move/from16 v0, v23

    int-to-float v9, v0

    .line 147
    .local v9, f5:F
    add-int v23, v12, v18

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    .line 148
    .local v17, total_width:F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v15

    const/high16 v24, 0x41a0

    add-float v10, v23, v24

    .line 149
    .local v10, f7:F
    int-to-float v0, v12

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-virtual {v0, v1, v9, v2, v10}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 151
    .end local v9           #f5:F
    .end local v10           #f7:F
    .end local v12           #left:I
    .end local v17           #total_width:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->mMarqueeSpeed:I

    move/from16 v23, v0

    if-eqz v23, :cond_3

    if-nez v18, :cond_4

    .line 152
    :cond_3
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v11, v23, v15

    .line 153
    .local v11, f9:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v14, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    .end local v11           #f9:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 155
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 157
    .local v16, textWidth:F
    const/4 v13, 0x0

    .line 158
    .local v13, marqueePos:F
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->mMarqueePos:F

    move/from16 v23, v0

    const v24, 0x7f7ffffd

    cmpl-float v23, v23, v24

    if-nez v23, :cond_5

    .line 159
    const/4 v13, 0x0

    .line 160
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/view/TextScreenElement;->mMarqueePos:F

    .line 165
    :goto_2
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v7, v23, v13

    .line 166
    .local v7, f12:F
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v8, v23, v15

    .line 167
    .local v8, f13:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llewa/lockscreen/view/TextScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v7, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->mMarqueeSpeed:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->num:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    add-int v23, v23, v18

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v23, v16, v23

    if-lez v23, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->num:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/view/TextScreenElement;->num:I

    goto :goto_1

    .line 162
    .end local v7           #f12:F
    .end local v8           #f13:F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->mMarqueePos:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->mMarqueeSpeed:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Llewa/lockscreen/view/TextScreenElement;->num:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v13, v23, v24

    goto :goto_2

    .line 171
    .restart local v7       #f12:F
    .restart local v8       #f13:F
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Llewa/lockscreen/view/TextScreenElement;->num:I

    goto/16 :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 179
    iput-object p1, p0, Llewa/lockscreen/view/TextScreenElement;->mText:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Llewa/lockscreen/view/TextScreenElement;->mFormat:Ljava/lang/String;

    .line 181
    return-void
.end method
