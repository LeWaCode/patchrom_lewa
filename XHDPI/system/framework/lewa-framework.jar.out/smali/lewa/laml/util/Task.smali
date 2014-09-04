.class public Llewa/laml/util/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static TAG_ACTION:Ljava/lang/String;

.field public static TAG_ANIMATION:Ljava/lang/String;

.field public static TAG_CATEGORY:Ljava/lang/String;

.field public static TAG_CLASS:Ljava/lang/String;

.field public static TAG_ID:Ljava/lang/String;

.field public static TAG_NAME:Ljava/lang/String;

.field public static TAG_PACKAGE:Ljava/lang/String;

.field public static TAG_TYPE:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public anim:Z

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "action"

    sput-object v0, Llewa/laml/util/Task;->TAG_ACTION:Ljava/lang/String;

    .line 11
    const-string v0, "category"

    sput-object v0, Llewa/laml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    .line 13
    const-string v0, "class"

    sput-object v0, Llewa/laml/util/Task;->TAG_CLASS:Ljava/lang/String;

    .line 15
    const-string v0, "id"

    sput-object v0, Llewa/laml/util/Task;->TAG_ID:Ljava/lang/String;

    .line 17
    const-string v0, "name"

    sput-object v0, Llewa/laml/util/Task;->TAG_NAME:Ljava/lang/String;

    .line 19
    const-string v0, "package"

    sput-object v0, Llewa/laml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    .line 21
    const-string v0, "type"

    sput-object v0, Llewa/laml/util/Task;->TAG_TYPE:Ljava/lang/String;

    .line 23
    const-string v0, "anim"

    sput-object v0, Llewa/laml/util/Task;->TAG_ANIMATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Llewa/laml/util/Task;
    .locals 3
    .parameter "ele"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1

    .line 45
    :cond_0
    new-instance v1, Llewa/laml/util/Task;

    invoke-direct {v1}, Llewa/laml/util/Task;-><init>()V

    .line 46
    .local v1, task:Llewa/laml/util/Task;
    sget-object v2, Llewa/laml/util/Task;->TAG_ID:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->id:Ljava/lang/String;

    .line 47
    sget-object v2, Llewa/laml/util/Task;->TAG_ACTION:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->action:Ljava/lang/String;

    .line 48
    sget-object v2, Llewa/laml/util/Task;->TAG_TYPE:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->type:Ljava/lang/String;

    .line 49
    sget-object v2, Llewa/laml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->category:Ljava/lang/String;

    .line 50
    sget-object v2, Llewa/laml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->packageName:Ljava/lang/String;

    .line 51
    sget-object v2, Llewa/laml/util/Task;->TAG_CLASS:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->className:Ljava/lang/String;

    .line 52
    sget-object v2, Llewa/laml/util/Task;->TAG_NAME:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llewa/laml/util/Task;->name:Ljava/lang/String;

    .line 53
    sget-object v2, Llewa/laml/util/Task;->TAG_ANIMATION:Ljava/lang/String;

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, animStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Llewa/laml/util/Task;->anim:Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method
