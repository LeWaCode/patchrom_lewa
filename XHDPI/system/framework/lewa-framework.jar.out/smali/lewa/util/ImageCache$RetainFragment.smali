.class public Llewa/util/ImageCache$RetainFragment;
.super Landroid/app/Fragment;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llewa/util/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Llewa/util/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 579
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Llewa/util/ImageCache$RetainFragment;->setRetainInstance(Z)V

    .line 583
    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 591
    iput-object p1, p0, Llewa/util/ImageCache$RetainFragment;->mObject:Ljava/lang/Object;

    .line 592
    return-void
.end method
