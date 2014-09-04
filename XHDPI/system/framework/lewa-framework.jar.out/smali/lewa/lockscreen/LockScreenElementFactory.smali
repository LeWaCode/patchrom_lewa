.class public Llewa/lockscreen/LockScreenElementFactory;
.super Llewa/lockscreen/view/ScreenElementFactory;
.source "LockScreenElementFactory.java"


# instance fields
.field private final mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

.field private final mUnlockerListener:Llewa/lockscreen/UnlockerListener;


# direct methods
.method public constructor <init>(Llewa/lockscreen/LockScreenRoot$UnlockerCallback;Llewa/lockscreen/UnlockerListener;)V
    .locals 0
    .parameter "unlockercallback"
    .parameter "unlockerlistener"

    .prologue
    .line 17
    invoke-direct {p0}, Llewa/lockscreen/view/ScreenElementFactory;-><init>()V

    .line 19
    iput-object p1, p0, Llewa/lockscreen/LockScreenElementFactory;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    .line 20
    iput-object p2, p0, Llewa/lockscreen/LockScreenElementFactory;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    .line 21
    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)Llewa/lockscreen/view/ScreenElement;
    .locals 3
    .parameter "element"
    .parameter "screencontext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llewa/lockscreen/view/DomParseException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, screenElement:Llewa/lockscreen/view/ScreenElement;
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unlocker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    new-instance v0, Llewa/lockscreen/UnlockerScreenElement;

    .end local v0           #screenElement:Llewa/lockscreen/view/ScreenElement;
    iget-object v1, p0, Llewa/lockscreen/LockScreenElementFactory;->mUnlockerCallback:Llewa/lockscreen/LockScreenRoot$UnlockerCallback;

    iget-object v2, p0, Llewa/lockscreen/LockScreenElementFactory;->mUnlockerListener:Llewa/lockscreen/UnlockerListener;

    invoke-direct {v0, p1, p2, v1, v2}, Llewa/lockscreen/UnlockerScreenElement;-><init>(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;Llewa/lockscreen/LockScreenRoot$UnlockerCallback;Llewa/lockscreen/UnlockerListener;)V

    .line 31
    .restart local v0       #screenElement:Llewa/lockscreen/view/ScreenElement;
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-super {p0, p1, p2}, Llewa/lockscreen/view/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Llewa/lockscreen/view/ScreenContext;)Llewa/lockscreen/view/ScreenElement;

    move-result-object v0

    goto :goto_0
.end method
