.class public Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;
.super Ljava/lang/ref/WeakReference;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/lockscreen/view/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftRefedBitmap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .parameter "key"
    .parameter "referent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 60
    iput-object p1, p0, Llewa/lockscreen/view/ResourceManager$SoftRefedBitmap;->key:Ljava/lang/String;

    .line 61
    return-void
.end method
