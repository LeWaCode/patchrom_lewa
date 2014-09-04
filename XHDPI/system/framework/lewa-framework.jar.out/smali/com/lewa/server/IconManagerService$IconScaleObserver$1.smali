.class Lcom/lewa/server/IconManagerService$IconScaleObserver$1;
.super Ljava/lang/Object;
.source "IconManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lewa/server/IconManagerService$IconScaleObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lewa/server/IconManagerService$IconScaleObserver;


# direct methods
.method constructor <init>(Lcom/lewa/server/IconManagerService$IconScaleObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lewa/server/IconManagerService$IconScaleObserver$1;->this$1:Lcom/lewa/server/IconManagerService$IconScaleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/lewa/server/IconManagerService$IconScaleObserver$1;->this$1:Lcom/lewa/server/IconManagerService$IconScaleObserver;

    iget-object v1, v1, Lcom/lewa/server/IconManagerService$IconScaleObserver;->this$0:Lcom/lewa/server/IconManagerService;

    #getter for: Lcom/lewa/server/IconManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lewa/server/IconManagerService;->access$000(Lcom/lewa/server/IconManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_icon_scale"

    const/high16 v3, 0x3f80

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 58
    .local v0, iconScale:F
    invoke-static {}, Lcom/lewa/server/IconManagerService;->access$100()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Llewa/content/res/ThemeResources;->reset()V

    .line 60
    invoke-static {v0}, Llewa/content/res/IconCustomizer;->setIconScale(F)V

    .line 61
    invoke-static {v0}, Lcom/lewa/server/IconManagerService;->access$102(F)F

    .line 63
    :cond_0
    return-void
.end method
