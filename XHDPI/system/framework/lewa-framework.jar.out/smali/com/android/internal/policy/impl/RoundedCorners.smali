.class public Lcom/android/internal/policy/impl/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"


# static fields
.field private static final CORNER_IDS:[I = null

.field private static final NUM_CORNERS:I = 0x4


# instance fields
.field private final mCorners:[Landroid/graphics/drawable/Drawable;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayHeight:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDisplayWidth:I

.field private mEnabled:Z

.field private final mHeight:[I

.field private mLastBottom:I

.field private mLastLeft:I

.field private mLastRight:I

.field private mLastTop:I

.field private final mStatusBarHeight:I

.field private final mWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/RoundedCorners;->CORNER_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x99t 0x0t 0x8t 0x9t
        0x98t 0x0t 0x8t 0x9t
        0x9bt 0x0t 0x8t 0x9t
        0x9at 0x0t 0x8t 0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v2, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    .line 27
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    .line 28
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    .line 34
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    .line 35
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 39
    const-string v2, "zhangxianjia"

    const-string v3, "init runded corner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplay:Landroid/view/Display;

    .line 42
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, localResources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayWidth:I

    .line 45
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayHeight:I

    .line 46
    const v2, 0x90b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mStatusBarHeight:I

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 50
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/android/internal/policy/impl/RoundedCorners;->CORNER_IDS:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 51
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    aput v3, v2, v0

    .line 52
    iget-object v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    aput v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 10
    .parameter "canvas"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mEnabled:Z

    if-nez v3, :cond_1

    .line 102
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v3, p5, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v3, p4, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v3, p4, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v3, p5, :cond_0

    .line 75
    :cond_3
    sub-int v2, p4, p2

    .line 76
    .local v2, width:I
    sub-int v0, p5, p3

    .line 79
    .local v0, height:I
    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastLeft:I

    if-ne p2, v3, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastTop:I

    if-ne p3, v3, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastRight:I

    if-ne p4, v3, :cond_4

    iget v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastBottom:I

    if-eq p5, v3, :cond_5

    .line 82
    :cond_4
    iput p2, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastLeft:I

    .line 83
    iput p3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastTop:I

    .line 84
    iput p4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastRight:I

    .line 85
    iput p5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mLastBottom:I

    .line 86
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v6

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v6

    add-int/2addr v5, p3

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v7

    sub-int v4, p4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v7

    add-int/2addr v5, p3

    invoke-virtual {v3, v4, p3, p4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v4, v4, v8

    sub-int v4, p5, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v5, v5, v8

    add-int/2addr v5, p2

    invoke-virtual {v3, p2, v4, v5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mWidth:[I

    aget v4, v4, v9

    sub-int v4, p4, v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mHeight:[I

    aget v5, v5, v9

    sub-int v5, p5, v5

    invoke-virtual {v3, v4, v5, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/internal/policy/impl/RoundedCorners;->mCorners:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
