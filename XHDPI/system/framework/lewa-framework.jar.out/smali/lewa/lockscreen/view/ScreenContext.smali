.class public Llewa/lockscreen/view/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# instance fields
.field public final lockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

.field public final mContext:Landroid/content/Context;

.field public final mFactory:Llewa/lockscreen/view/ScreenElementFactory;

.field public final mResourceManager:Llewa/lockscreen/view/ResourceManager;

.field public mRoot:Llewa/lockscreen/view/ScreenElement;

.field public mShouldUpdate:Z

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llewa/lockscreen/view/ResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "resourcemanager"

    .prologue
    .line 24
    new-instance v0, Llewa/lockscreen/view/ScreenElementFactory;

    invoke-direct {v0}, Llewa/lockscreen/view/ScreenElementFactory;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Llewa/lockscreen/view/ScreenContext;-><init>(Landroid/content/Context;Llewa/lockscreen/view/ResourceManager;Llewa/lockscreen/view/ScreenElementFactory;Llewa/lockscreen/LewaLockScreenInterface;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/lockscreen/view/ResourceManager;Llewa/lockscreen/view/ScreenElementFactory;Llewa/lockscreen/LewaLockScreenInterface;)V
    .locals 0
    .parameter "context"
    .parameter "resourcemanager"
    .parameter "screenelementfactory"
    .parameter "lockScreenInterface"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Llewa/lockscreen/view/ScreenContext;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Llewa/lockscreen/view/ScreenContext;->mResourceManager:Llewa/lockscreen/view/ResourceManager;

    .line 31
    iput-object p3, p0, Llewa/lockscreen/view/ScreenContext;->mFactory:Llewa/lockscreen/view/ScreenElementFactory;

    .line 32
    iput-object p4, p0, Llewa/lockscreen/view/ScreenContext;->lockScreenInterface:Llewa/lockscreen/LewaLockScreenInterface;

    .line 33
    return-void
.end method
