.class public Llewa/content/res/IconCustomizer$IconConfig;
.super Ljava/lang/Object;
.source "IconCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/content/res/IconCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconConfig"
.end annotation


# instance fields
.field public baseScale:F

.field public cameraX:F

.field public cameraY:F

.field filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llewa/graphics/IBitmapFilter;",
            ">;"
        }
    .end annotation
.end field

.field public isComposeThemeIcon:Z

.field public isUseModIcon:Z

.field public pointsMappingFrom:[F

.field public pointsMappingTo:[F

.field public rotateX:F

.field public rotateY:F

.field public rotateZ:F

.field public scaleX:F

.field public scaleY:F

.field public shadowColor:I

.field public shadowRadius:F

.field public skewX:F

.field public skewY:F

.field public transX:F

.field public transY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    iput v2, p0, Llewa/content/res/IconCustomizer$IconConfig;->scaleX:F

    .line 1203
    iput v2, p0, Llewa/content/res/IconCustomizer$IconConfig;->scaleY:F

    .line 1213
    const/high16 v0, 0x40a0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Llewa/content/res/IconCustomizer$IconConfig;->shadowRadius:F

    .line 1215
    const/high16 v0, 0x6000

    iput v0, p0, Llewa/content/res/IconCustomizer$IconConfig;->shadowColor:I

    .line 1217
    iput v2, p0, Llewa/content/res/IconCustomizer$IconConfig;->baseScale:F

    .line 1219
    const/4 v0, 0x1

    iput-boolean v0, p0, Llewa/content/res/IconCustomizer$IconConfig;->isUseModIcon:Z

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Llewa/content/res/IconCustomizer$IconConfig;->isComposeThemeIcon:Z

    return-void
.end method
