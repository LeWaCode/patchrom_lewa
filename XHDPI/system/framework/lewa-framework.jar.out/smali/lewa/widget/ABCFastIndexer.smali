.class public Llewa/widget/ABCFastIndexer;
.super Landroid/widget/FrameLayout;
.source "ABCFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static letters:[Ljava/lang/String;


# instance fields
.field private choose:I

.field private mBarBackground:Landroid/graphics/drawable/Drawable;

.field private mBarTextSize:I

.field private mBarWidth:I

.field private mChooseColor:I

.field private mHandler:Landroid/os/Handler;

.field private mHideFastIndexerPop:Ljava/lang/Runnable;

.field private mLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;

.field private mPopBackground:Landroid/graphics/drawable/Drawable;

.field private mPopTextColor:I

.field private mPopTextSize:I

.field private mPopTextView:Landroid/widget/TextView;

.field private paint:Landroid/graphics/Paint;

.field private showBkg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Llewa/widget/ABCFastIndexer;->letters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    .line 42
    iput-boolean v1, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Llewa/widget/ABCFastIndexer$1;

    invoke-direct {v0, p0}, Llewa/widget/ABCFastIndexer$1;-><init>(Llewa/widget/ABCFastIndexer;)V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHideFastIndexerPop:Ljava/lang/Runnable;

    .line 65
    invoke-direct {p0, p1}, Llewa/widget/ABCFastIndexer;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    .line 42
    iput-boolean v1, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Llewa/widget/ABCFastIndexer$1;

    invoke-direct {v0, p0}, Llewa/widget/ABCFastIndexer$1;-><init>(Llewa/widget/ABCFastIndexer;)V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHideFastIndexerPop:Ljava/lang/Runnable;

    .line 60
    invoke-direct {p0, p1}, Llewa/widget/ABCFastIndexer;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    .line 42
    iput-boolean v1, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Llewa/widget/ABCFastIndexer$1;

    invoke-direct {v0, p0}, Llewa/widget/ABCFastIndexer$1;-><init>(Llewa/widget/ABCFastIndexer;)V

    iput-object v0, p0, Llewa/widget/ABCFastIndexer;->mHideFastIndexerPop:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Llewa/widget/ABCFastIndexer;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Llewa/widget/ABCFastIndexer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private drawThumb(IZ)V
    .locals 4
    .parameter "position"
    .parameter "isShowPop"

    .prologue
    .line 203
    iget v0, p0, Llewa/widget/ABCFastIndexer;->choose:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mListener:Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_2

    .line 204
    if-ltz p1, :cond_2

    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 205
    iput p1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    .line 206
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    iget v2, p0, Llewa/widget/ABCFastIndexer;->choose:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    if-eqz p2, :cond_0

    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mHideFastIndexerPop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mHideFastIndexerPop:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mListener:Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;

    if-eqz v0, :cond_1

    .line 213
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mListener:Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;

    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 215
    :cond_1
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->invalidate()V

    .line 218
    :cond_2
    return-void
.end method

.method private getPopTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    .line 241
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    .line 243
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 247
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    iget v2, p0, Llewa/widget/ABCFastIndexer;->mPopTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Llewa/widget/ABCFastIndexer;->mPopTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    iget-object v2, p0, Llewa/widget/ABCFastIndexer;->mPopBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 252
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Llewa/widget/ABCFastIndexer;->addView(Landroid/view/View;)V

    .line 255
    .end local v0           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mPopTextView:Landroid/widget/TextView;

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 82
    .local v4, resources:Landroid/content/res/Resources;
    const v5, 0x9050024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Llewa/widget/ABCFastIndexer;->mChooseColor:I

    .line 83
    const v5, 0x90b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llewa/widget/ABCFastIndexer;->mBarTextSize:I

    .line 85
    const v5, 0x90b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llewa/widget/ABCFastIndexer;->mBarWidth:I

    .line 86
    const v5, 0x90b0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Llewa/widget/ABCFastIndexer;->mPopTextSize:I

    .line 87
    const v5, 0x9050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Llewa/widget/ABCFastIndexer;->mPopTextColor:I

    .line 88
    const v5, 0x9080096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Llewa/widget/ABCFastIndexer;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    const v5, 0x9080097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Llewa/widget/ABCFastIndexer;->mPopBackground:Landroid/graphics/drawable/Drawable;

    .line 93
    iget-object v5, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 94
    sget-object v0, Llewa/widget/ABCFastIndexer;->letters:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 95
    .local v3, letter:Ljava/lang/String;
    iget-object v5, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v3           #letter:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Llewa/widget/ABCFastIndexer;->getPopTextView()Landroid/widget/TextView;

    .line 99
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->getHeight()I

    move-result v1

    .line 117
    .local v1, height:I
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->getWidth()I

    move-result v8

    .line 119
    .local v8, width:I
    iget-boolean v11, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    if-eqz v11, :cond_2

    .line 120
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->mBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 121
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->mBarBackground:Landroid/graphics/drawable/Drawable;

    iget v12, p0, Llewa/widget/ABCFastIndexer;->mBarWidth:I

    sub-int v12, v8, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->mBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    :cond_0
    :goto_0
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 128
    .local v7, size:I
    div-int v6, v1, v7

    .line 129
    .local v6, singleHeight:I
    mul-int v11, v6, v7

    sub-int v5, v1, v11

    .line 130
    .local v5, remainder:I
    div-int/lit8 v4, v5, 0x2

    .line 131
    .local v4, paddingTop:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_3

    .line 132
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    const v12, -0x777778

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    iget v12, p0, Llewa/widget/ABCFastIndexer;->mBarTextSize:I

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 141
    .local v0, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v11, p0, Llewa/widget/ABCFastIndexer;->choose:I

    if-ne v2, v11, :cond_1

    .line 142
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    iget v12, p0, Llewa/widget/ABCFastIndexer;->mChooseColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 145
    :cond_1
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 146
    .local v3, letterStr:Ljava/lang/String;
    iget v11, p0, Llewa/widget/ABCFastIndexer;->mBarWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, p0, Llewa/widget/ABCFastIndexer;->mBarWidth:I

    sub-int v12, v8, v12

    int-to-float v12, v12

    add-float v9, v11, v12

    .line 147
    .local v9, xPos:F
    mul-int v11, v6, v2

    add-int/2addr v11, v6

    int-to-float v11, v11

    iget v12, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v11, v12

    int-to-float v12, v4

    add-float v10, v11, v12

    .line 148
    .local v10, yPos:F
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 149
    iget-object v11, p0, Llewa/widget/ABCFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->reset()V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v0           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    .end local v2           #i:I
    .end local v3           #letterStr:Ljava/lang/String;
    .end local v4           #paddingTop:I
    .end local v5           #remainder:I
    .end local v6           #singleHeight:I
    .end local v7           #size:I
    .end local v9           #xPos:F
    .end local v10           #yPos:F
    :cond_2
    const-string v11, "#00000000"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 151
    .restart local v2       #i:I
    .restart local v4       #paddingTop:I
    .restart local v5       #remainder:I
    .restart local v6       #singleHeight:I
    .restart local v7       #size:I
    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 156
    .local v3, xf:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 157
    .local v5, yf:F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Llewa/widget/ABCFastIndexer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 159
    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, p0, Llewa/widget/ABCFastIndexer;->mBarWidth:I

    sub-int/2addr v8, v9

    iput v8, v2, Landroid/graphics/Rect;->left:I

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 163
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 164
    .local v4, y:F
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v4, v8

    iget-object v9, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 165
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v6, v7

    .line 194
    :cond_0
    return v6

    .line 167
    :pswitch_0
    float-to-int v8, v3

    float-to-int v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    iput-boolean v7, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    .line 182
    :pswitch_1
    float-to-int v8, v3

    float-to-int v9, v5

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 185
    invoke-direct {p0, v1, v7}, Llewa/widget/ABCFastIndexer;->drawThumb(IZ)V

    goto :goto_0

    .line 189
    :pswitch_2
    iput-boolean v6, p0, Llewa/widget/ABCFastIndexer;->showBkg:Z

    .line 191
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->invalidate()V

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawThumb(C)V
    .locals 1
    .parameter "letter"

    .prologue
    .line 233
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llewa/widget/ABCFastIndexer;->drawThumb(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public drawThumb(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llewa/widget/ABCFastIndexer;->drawThumb(IZ)V

    .line 238
    return-void
.end method

.method public drawThumb(Ljava/lang/String;)V
    .locals 3
    .parameter "letter"

    .prologue
    .line 221
    if-eqz p1, :cond_1

    iget v1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    iget-object v2, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    iget v2, p0, Llewa/widget/ABCFastIndexer;->choose:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 225
    :cond_0
    iget v1, p0, Llewa/widget/ABCFastIndexer;->choose:I

    if-eq v1, v0, :cond_1

    .line 226
    iput v0, p0, Llewa/widget/ABCFastIndexer;->choose:I

    .line 227
    invoke-virtual {p0}, Llewa/widget/ABCFastIndexer;->invalidate()V

    .line 230
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 109
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 110
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setLetters(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, letters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    return-void
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 5
    .parameter "letters"

    .prologue
    .line 74
    iget-object v4, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 75
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 76
    .local v3, letter:Ljava/lang/String;
    iget-object v4, p0, Llewa/widget/ABCFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v3           #letter:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setOnTouchingLetterChangedListener(Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;)V
    .locals 0
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 265
    iput-object p1, p0, Llewa/widget/ABCFastIndexer;->mListener:Llewa/widget/ABCFastIndexer$OnTouchingLetterChangedListener;

    .line 266
    return-void
.end method
