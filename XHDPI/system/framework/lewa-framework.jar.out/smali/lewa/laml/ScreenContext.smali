.class public Llewa/laml/ScreenContext;
.super Ljava/lang/Object;
.source "ScreenContext.java"


# static fields
.field public static final DEBUG_NAMES:[Ljava/lang/String; = null

.field public static final LAML_PREFERENCES:Ljava/lang/String; = "LamlPreferences"


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mController:Llewa/laml/RendererController;

.field public final mFactory:Llewa/laml/elements/ScreenElementFactory;

.field private final mHandler:Landroid/os/Handler;

.field private mParent:Llewa/laml/ScreenContext;

.field public final mResourceManager:Llewa/laml/ResourceManager;

.field public mRoot:Llewa/laml/ScreenElementRoot;

.field public final mVariables:Llewa/laml/data/Variables;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "battery_low"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "battery_charging"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "battery_full"

    aput-object v2, v0, v1

    sput-object v0, Llewa/laml/ScreenContext;->DEBUG_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;)V
    .locals 1
    .parameter "context"
    .parameter "loader"

    .prologue
    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "loader"
    .parameter "h"

    .prologue
    .line 36
    new-instance v0, Llewa/laml/ResourceManager;

    invoke-direct {v0, p2}, Llewa/laml/ResourceManager;-><init>(Llewa/laml/ResourceLoader;)V

    new-instance v1, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v1}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, p3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceLoader;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "loader"
    .parameter "factory"
    .parameter "h"

    .prologue
    .line 45
    new-instance v0, Llewa/laml/ResourceManager;

    invoke-direct {v0, p2}, Llewa/laml/ResourceManager;-><init>(Llewa/laml/ResourceLoader;)V

    invoke-direct {p0, p1, v0, p3, p4}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;)V
    .locals 2
    .parameter "context"
    .parameter "resourceMgr"

    .prologue
    .line 49
    new-instance v0, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "h"

    .prologue
    .line 53
    new-instance v0, Llewa/laml/elements/ScreenElementFactory;

    invoke-direct {v0}, Llewa/laml/elements/ScreenElementFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"

    .prologue
    .line 62
    new-instance v5, Llewa/laml/data/Variables;

    invoke-direct {v5}, Llewa/laml/data/Variables;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Llewa/laml/ScreenContext;-><init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;Llewa/laml/data/Variables;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llewa/laml/ResourceManager;Llewa/laml/elements/ScreenElementFactory;Landroid/os/Handler;Llewa/laml/data/Variables;)V
    .locals 1
    .parameter "context"
    .parameter "resourceMgr"
    .parameter "factory"
    .parameter "h"
    .parameter "v"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, rawContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 69
    move-object v0, p1

    .line 70
    :cond_0
    iput-object v0, p0, Llewa/laml/ScreenContext;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Llewa/laml/ScreenContext;->mResourceManager:Llewa/laml/ResourceManager;

    .line 72
    iput-object p3, p0, Llewa/laml/ScreenContext;->mFactory:Llewa/laml/elements/ScreenElementFactory;

    .line 73
    iput-object p4, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p5, p0, Llewa/laml/ScreenContext;->mVariables:Llewa/laml/data/Variables;

    .line 75
    return-void
.end method


# virtual methods
.method public createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0, p1}, Llewa/laml/RendererController;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0, p1}, Llewa/laml/ScreenContext;->createToken(Ljava/lang/String;)Llewa/laml/FramerateTokenList$FramerateToken;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->doneRender()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->doneRender()V

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRenderController()Llewa/laml/RendererController;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    return-object v0
.end method

.method public isDebugingName(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    .line 127
    sget-object v4, Llewa/laml/ScreenContext;->DEBUG_NAMES:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Llewa/laml/ScreenContext;->DEBUG_NAMES:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 128
    sget-object v0, Llewa/laml/ScreenContext;->DEBUG_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 129
    .local v1, debugName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const/4 v4, 0x1

    .line 134
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #debugName:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 128
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #debugName:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #debugName:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isGlobalThread()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    iget-boolean v0, v0, Llewa/laml/RendererController;->mGlobal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .parameter "r"
    .parameter "delayMillis"

    .prologue
    .line 107
    iget-object v0, p0, Llewa/laml/ScreenContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->requestUpdate()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->requestUpdate()V

    goto :goto_0
.end method

.method public setParentContext(Llewa/laml/ScreenContext;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 119
    iput-object p1, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    .line 120
    return-void
.end method

.method public setRenderController(Llewa/laml/RendererController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 123
    iput-object p1, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    .line 124
    return-void
.end method

.method public shouldUpdate()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Llewa/laml/ScreenContext;->mController:Llewa/laml/RendererController;

    invoke-virtual {v0}, Llewa/laml/RendererController;->shouldUpdate()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Llewa/laml/ScreenContext;->mParent:Llewa/laml/ScreenContext;

    invoke-virtual {v0}, Llewa/laml/ScreenContext;->shouldUpdate()Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
