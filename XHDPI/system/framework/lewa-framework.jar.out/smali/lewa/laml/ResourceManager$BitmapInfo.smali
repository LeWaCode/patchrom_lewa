.class public Llewa/laml/ResourceManager$BitmapInfo;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/laml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mLastVisitTime:J

.field public final mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bm"
    .parameter "padding"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Llewa/laml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object p2, p0, Llewa/laml/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    .line 242
    return-void
.end method
