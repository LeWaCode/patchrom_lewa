.class public final Lcom/lewa/cloud/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/cloud/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CloudItemStyle:[I = null

.field public static final CloudItemStyle_arrow:I = 0x0

.field public static final PagerHeader:[I = null

.field public static final PagerHeader_indicator:I = 0x1

.field public static final PagerHeader_indicator_background:I = 0x2

.field public static final PagerHeader_indicator_padding:I = 0x3

.field public static final PagerHeader_textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 421
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lcom/lewa/cloud/R$styleable;->CloudItemStyle:[I

    .line 450
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lewa/cloud/R$styleable;->PagerHeader:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
